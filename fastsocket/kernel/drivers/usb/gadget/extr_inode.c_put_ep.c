
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_data {int wait; int epfiles; int dev; int count; } ;


 int BUG_ON (int) ;
 int atomic_dec_and_test (int *) ;
 int kfree (struct ep_data*) ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;
 int put_dev (int ) ;
 int waitqueue_active (int *) ;

__attribute__((used)) static void put_ep (struct ep_data *data)
{
 if (likely (!atomic_dec_and_test (&data->count)))
  return;
 put_dev (data->dev);

 BUG_ON (!list_empty (&data->epfiles));
 BUG_ON (waitqueue_active (&data->wait));
 kfree (data);
}
