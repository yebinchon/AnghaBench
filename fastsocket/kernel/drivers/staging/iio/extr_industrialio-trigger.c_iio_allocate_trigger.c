
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * class; int * type; } ;
struct iio_trigger {int pollfunc_list; int list; int pollfunc_list_lock; TYPE_1__ dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_drvdata (TYPE_1__*,void*) ;
 int device_initialize (TYPE_1__*) ;
 int iio_class ;
 int iio_get () ;
 int iio_trig_type ;
 struct iio_trigger* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct iio_trigger *iio_allocate_trigger(void)
{
 struct iio_trigger *trig;
 trig = kzalloc(sizeof *trig, GFP_KERNEL);
 if (trig) {
  trig->dev.type = &iio_trig_type;
  trig->dev.class = &iio_class;
  device_initialize(&trig->dev);
  dev_set_drvdata(&trig->dev, (void *)trig);
  spin_lock_init(&trig->pollfunc_list_lock);
  INIT_LIST_HEAD(&trig->list);
  INIT_LIST_HEAD(&trig->pollfunc_list);
  iio_get();
 }
 return trig;
}
