
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_12__ {int devt; int * type; struct device* parent; int * class; } ;
struct TYPE_13__ {struct module* owner; } ;
struct TYPE_11__ {TYPE_8__ chrdev; scalar_t__ flags; struct iio_event_interface* private; } ;
struct TYPE_10__ {int list; } ;
struct iio_event_interface {int max_events; TYPE_3__ dev; TYPE_2__ handler; int wait; TYPE_1__ det_events; scalar_t__ current_events; int event_list_lock; } ;
struct device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int) ;
 int cdev_add (TYPE_8__*,int ,int) ;
 int cdev_init (TYPE_8__*,int *) ;
 int dev_set_name (TYPE_3__*,char*,char const*) ;
 int device_add (TYPE_3__*) ;
 int device_initialize (TYPE_3__*) ;
 int device_unregister (TYPE_3__*) ;
 int iio_class ;
 int iio_device_free_chrdev_minor (int) ;
 int iio_device_get_chrdev_minor () ;
 int iio_devt ;
 int iio_event_chrdev_fileops ;
 int iio_event_type ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int put_device (TYPE_3__*) ;

int iio_setup_ev_int(struct iio_event_interface *ev_int,
       const char *name,
       struct module *owner,
       struct device *dev)
{
 int ret, minor;

 ev_int->dev.class = &iio_class;
 ev_int->dev.parent = dev;
 ev_int->dev.type = &iio_event_type;
 device_initialize(&ev_int->dev);

 minor = iio_device_get_chrdev_minor();
 if (minor < 0) {
  ret = minor;
  goto error_device_put;
 }
 ev_int->dev.devt = MKDEV(MAJOR(iio_devt), minor);
 dev_set_name(&ev_int->dev, "%s", name);

 ret = device_add(&ev_int->dev);
 if (ret)
  goto error_free_minor;

 cdev_init(&ev_int->handler.chrdev, &iio_event_chrdev_fileops);
 ev_int->handler.chrdev.owner = owner;

 mutex_init(&ev_int->event_list_lock);

 ev_int->max_events = 10;
 ev_int->current_events = 0;
 INIT_LIST_HEAD(&ev_int->det_events.list);
 init_waitqueue_head(&ev_int->wait);
 ev_int->handler.private = ev_int;
 ev_int->handler.flags = 0;

 ret = cdev_add(&ev_int->handler.chrdev, ev_int->dev.devt, 1);
 if (ret)
  goto error_unreg_device;

 return 0;

error_unreg_device:
 device_unregister(&ev_int->dev);
error_free_minor:
 iio_device_free_chrdev_minor(minor);
error_device_put:
 put_device(&ev_int->dev);

 return ret;
}
