
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int interrupt_handler_ws; int last_timestamp; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
typedef int s64 ;


 int schedule_work (int *) ;

__attribute__((used)) static int sca3000_handler_th(struct iio_dev *dev_info,
         int index,
         s64 timestamp,
         int no_test)
{
 struct sca3000_state *st = dev_info->dev_data;

 st->last_timestamp = timestamp;
 schedule_work(&st->interrupt_handler_ws);

 return 0;
}
