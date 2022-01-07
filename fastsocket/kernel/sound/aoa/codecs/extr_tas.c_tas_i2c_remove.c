
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int node; } ;
struct tas {int mtx; TYPE_1__ codec; } ;
struct i2c_client {int dummy; } ;


 int TAS_ACR_ANALOG_PDOWN ;
 int TAS_REG_ACR ;
 int aoa_codec_unregister (TYPE_1__*) ;
 struct tas* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct tas*) ;
 int mutex_destroy (int *) ;
 int of_node_put (int ) ;
 int tas_write_reg (struct tas*,int ,int,int *) ;

__attribute__((used)) static int tas_i2c_remove(struct i2c_client *client)
{
 struct tas *tas = i2c_get_clientdata(client);
 u8 tmp = TAS_ACR_ANALOG_PDOWN;

 aoa_codec_unregister(&tas->codec);
 of_node_put(tas->codec.node);


 tas_write_reg(tas, TAS_REG_ACR, 1, &tmp);

 mutex_destroy(&tas->mtx);
 kfree(tas);
 return 0;
}
