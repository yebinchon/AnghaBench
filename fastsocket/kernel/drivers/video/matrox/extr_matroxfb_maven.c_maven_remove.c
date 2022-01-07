
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_get_clientdata (struct i2c_client*) ;
 int kfree (int ) ;
 int maven_shutdown_client (struct i2c_client*) ;

__attribute__((used)) static int maven_remove(struct i2c_client *client)
{
 maven_shutdown_client(client);
 kfree(i2c_get_clientdata(client));
 return 0;
}
