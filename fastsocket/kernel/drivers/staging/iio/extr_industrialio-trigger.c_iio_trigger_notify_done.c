
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {scalar_t__ use_count; scalar_t__ timestamp; scalar_t__ (* try_reenable ) (struct iio_trigger*) ;} ;


 int iio_trigger_poll (struct iio_trigger*) ;
 scalar_t__ stub1 (struct iio_trigger*) ;

void iio_trigger_notify_done(struct iio_trigger *trig)
{
 trig->use_count--;
 if (trig->use_count == 0 && trig->try_reenable)
  if (trig->try_reenable(trig)) {

   trig->timestamp = 0;
   iio_trigger_poll(trig);
  }
}
