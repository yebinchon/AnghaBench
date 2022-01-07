
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * class; int * type; } ;
struct iio_dev {int mlock; TYPE_1__ dev; } ;


 int GFP_KERNEL ;
 int dev_set_drvdata (TYPE_1__*,void*) ;
 int device_initialize (TYPE_1__*) ;
 int iio_class ;
 int iio_dev_type ;
 int iio_get () ;
 struct iio_dev* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct iio_dev *iio_allocate_device(void)
{
 struct iio_dev *dev = kzalloc(sizeof *dev, GFP_KERNEL);

 if (dev) {
  dev->dev.type = &iio_dev_type;
  dev->dev.class = &iio_class;
  device_initialize(&dev->dev);
  dev_set_drvdata(&dev->dev, (void *)dev);
  mutex_init(&dev->mlock);
  iio_get();
 }

 return dev;
}
