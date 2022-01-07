
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lis3l02dq_state {int inter; int work_trigger_to_ring; int last_timestamp; } ;
struct iio_dev {TYPE_1__* trig; } ;
struct TYPE_2__ {int timestamp; } ;


 struct lis3l02dq_state* iio_dev_get_devdata (struct iio_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void lis3l02dq_poll_func_th(struct iio_dev *indio_dev)
{
  struct lis3l02dq_state *st = iio_dev_get_devdata(indio_dev);
 st->last_timestamp = indio_dev->trig->timestamp;
 schedule_work(&st->work_trigger_to_ring);






 st->inter = 1;
}
