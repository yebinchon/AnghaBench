
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3l02dq_state {struct iio_trigger* trig; } ;
struct iio_trigger {int timestamp; } ;
struct iio_dev {int dummy; } ;
typedef int s64 ;


 int IRQ_HANDLED ;
 struct lis3l02dq_state* iio_dev_get_devdata (struct iio_dev*) ;
 int iio_trigger_poll (struct iio_trigger*) ;

__attribute__((used)) static int lis3l02dq_data_rdy_trig_poll(struct iio_dev *dev_info,
           int index,
           s64 timestamp,
           int no_test)
{
 struct lis3l02dq_state *st = iio_dev_get_devdata(dev_info);
 struct iio_trigger *trig = st->trig;

 trig->timestamp = timestamp;
 iio_trigger_poll(trig);

 return IRQ_HANDLED;
}
