
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int init_waitqueue_head (int *) ;
 int s5k3e2fx_wait_queue ;

__attribute__((used)) static int s5k3e2fx_init_client(struct i2c_client *client)
{

 init_waitqueue_head(&s5k3e2fx_wait_queue);
 return 0;
}
