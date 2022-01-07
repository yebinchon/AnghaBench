
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1363_state {int poll_work; } ;
struct iio_dev {struct max1363_state* dev_data; } ;


 int schedule_work (int *) ;

void max1363_poll_func_th(struct iio_dev *indio_dev)
{
 struct max1363_state *st = indio_dev->dev_data;

 schedule_work(&st->poll_work);

 return;
}
