
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dev; int owner; } ;


 int __module_get (int ) ;
 int get_device (int *) ;

__attribute__((used)) static inline void iio_get_trigger(struct iio_trigger *trig)
{
 __module_get(trig->owner);
 get_device(&trig->dev);
}
