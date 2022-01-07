
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct ds2482_data {int w1_count; TYPE_1__* w1_ch; } ;
struct TYPE_2__ {int w1_bm; int * pdev; } ;


 struct ds2482_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct ds2482_data*) ;
 int w1_remove_master_device (int *) ;

__attribute__((used)) static int ds2482_remove(struct i2c_client *client)
{
 struct ds2482_data *data = i2c_get_clientdata(client);
 int idx;


 for (idx = 0; idx < data->w1_count; idx++) {
  if (data->w1_ch[idx].pdev != ((void*)0))
   w1_remove_master_device(&data->w1_ch[idx].w1_bm);
 }


 kfree(data);
 return 0;
}
