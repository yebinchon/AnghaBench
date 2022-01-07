
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2250 {int audio; } ;
struct i2c_client {int dummy; } ;


 struct s2250* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int i2c_unregister_device (int ) ;
 int kfree (struct s2250*) ;

__attribute__((used)) static int s2250_remove(struct i2c_client *client)
{
 struct s2250 *dec = i2c_get_clientdata(client);

 i2c_set_clientdata(client, ((void*)0));
 i2c_unregister_device(dec->audio);
 kfree(dec);
 return 0;
}
