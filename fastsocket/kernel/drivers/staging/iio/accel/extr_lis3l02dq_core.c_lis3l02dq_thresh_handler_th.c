
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ws; } ;
struct lis3l02dq_state {TYPE_1__ work_cont_thresh; int last_timestamp; } ;
struct iio_dev {struct lis3l02dq_state* dev_data; } ;
typedef int s64 ;


 int schedule_work (int *) ;

__attribute__((used)) static int lis3l02dq_thresh_handler_th(struct iio_dev *dev_info,
           int index,
           s64 timestamp,
           int no_test)
{
 struct lis3l02dq_state *st = dev_info->dev_data;


 st->last_timestamp = timestamp;
 schedule_work(&st->work_cont_thresh.ws);

 return 0;
}
