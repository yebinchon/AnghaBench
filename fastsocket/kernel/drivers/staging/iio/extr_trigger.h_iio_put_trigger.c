
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int owner; int dev; } ;


 int module_put (int ) ;
 int put_device (int *) ;

__attribute__((used)) static inline void iio_put_trigger(struct iio_trigger *trig)
{
 put_device(&trig->dev);
 module_put(trig->owner);
}
