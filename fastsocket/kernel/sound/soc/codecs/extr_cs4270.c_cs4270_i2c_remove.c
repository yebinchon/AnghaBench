
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct cs4270_private {int dummy; } ;
struct TYPE_2__ {int * dev; } ;


 int * cs4270_codec ;
 TYPE_1__ cs4270_dai ;
 struct cs4270_private* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct cs4270_private*) ;

__attribute__((used)) static int cs4270_i2c_remove(struct i2c_client *i2c_client)
{
 struct cs4270_private *cs4270 = i2c_get_clientdata(i2c_client);

 kfree(cs4270);
 cs4270_codec = ((void*)0);
 cs4270_dai.dev = ((void*)0);

 return 0;
}
