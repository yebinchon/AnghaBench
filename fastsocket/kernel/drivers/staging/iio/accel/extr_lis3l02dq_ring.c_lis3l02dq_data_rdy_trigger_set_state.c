
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lis3l02dq_state {TYPE_1__* indio_dev; } ;
struct iio_trigger {struct lis3l02dq_state* private_data; } ;
struct TYPE_2__ {int dev; } ;


 int LIS3L02DQ_REG_WAKE_UP_SRC_ADDR ;
 int __lis3l02dq_write_data_ready_config (int *,int *,int) ;
 int flush_scheduled_work () ;
 int iio_event_data_rdy_trig ;
 int lis3l02dq_read_all (struct lis3l02dq_state*,int *) ;
 int lis3l02dq_spi_read_reg_8 (int *,int ,int *) ;

__attribute__((used)) static int lis3l02dq_data_rdy_trigger_set_state(struct iio_trigger *trig,
      bool state)
{
 struct lis3l02dq_state *st = trig->private_data;
 int ret = 0;
 u8 t;
 __lis3l02dq_write_data_ready_config(&st->indio_dev->dev,
         &iio_event_data_rdy_trig,
         state);
 if (state == 0) {


  flush_scheduled_work();

  ret = lis3l02dq_read_all(st, ((void*)0));
 }
 lis3l02dq_spi_read_reg_8(&st->indio_dev->dev,
     LIS3L02DQ_REG_WAKE_UP_SRC_ADDR,
     &t);
 return ret;
}
