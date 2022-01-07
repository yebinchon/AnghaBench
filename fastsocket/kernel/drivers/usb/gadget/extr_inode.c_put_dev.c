
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_data {int wait; int count; } ;


 int BUG_ON (int ) ;
 int atomic_dec_and_test (int *) ;
 int kfree (struct dev_data*) ;
 scalar_t__ likely (int) ;
 int waitqueue_active (int *) ;

__attribute__((used)) static void put_dev (struct dev_data *data)
{
 if (likely (!atomic_dec_and_test (&data->count)))
  return;

 BUG_ON (waitqueue_active (&data->wait));
 kfree (data);
}
