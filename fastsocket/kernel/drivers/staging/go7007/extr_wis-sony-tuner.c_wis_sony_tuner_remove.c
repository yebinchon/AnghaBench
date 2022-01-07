
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wis_sony_tuner {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct wis_sony_tuner* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int kfree (struct wis_sony_tuner*) ;

__attribute__((used)) static int wis_sony_tuner_remove(struct i2c_client *client)
{
 struct wis_sony_tuner *t = i2c_get_clientdata(client);

 i2c_set_clientdata(client, ((void*)0));
 kfree(t);
 return 0;
}
