
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct device {int dummy; } ;


 int iio_put () ;
 int kfree (struct iio_trigger*) ;
 struct iio_trigger* to_iio_trigger (struct device*) ;

__attribute__((used)) static void iio_trig_release(struct device *device)
{
 struct iio_trigger *trig = to_iio_trigger(device);
 kfree(trig);
 iio_put();
}
