
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wis_saa7113 {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct wis_saa7113* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int kfree (struct wis_saa7113*) ;

__attribute__((used)) static int wis_saa7113_remove(struct i2c_client *client)
{
 struct wis_saa7113 *dec = i2c_get_clientdata(client);

 i2c_set_clientdata(client, ((void*)0));
 kfree(dec);
 return 0;
}
