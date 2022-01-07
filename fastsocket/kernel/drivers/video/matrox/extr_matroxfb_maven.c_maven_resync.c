
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maven_data {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int maven_set_reg (struct i2c_client*,int,int) ;

__attribute__((used)) static inline int maven_resync(struct maven_data* md) {
 struct i2c_client *c = md->client;
 maven_set_reg(c, 0x95, 0x20);
 return 0;
}
