
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsl2561_state {int command_buf_lock; TYPE_1__* command_buf; int client; } ;
struct TYPE_2__ {int address; scalar_t__ block; scalar_t__ word; } ;


 int TSL2561_CONTROL_REGISTER ;
 int TSL2561_CONT_REG_PWR_ON ;
 int TSL2561_INT_CONTROL_REGISTER ;
 int TSL2561_INT_REG_INT_TEST ;
 int i2c_smbus_write_byte_data (int ,char,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tsl2561_initialize(struct tsl2561_state *st)
{
 int err;

 mutex_lock(&st->command_buf_lock);
 st->command_buf->word = 0;
 st->command_buf->block = 0;
 st->command_buf->address = TSL2561_CONTROL_REGISTER;
 err = i2c_smbus_write_byte_data(st->client, *(char *)(st->command_buf),
     TSL2561_CONT_REG_PWR_ON);
 if (err)
  goto error_ret;

 st->command_buf->address = TSL2561_INT_CONTROL_REGISTER;
 err = i2c_smbus_write_byte_data(st->client, *(char *)(st->command_buf),
     TSL2561_INT_REG_INT_TEST);

error_ret:
 mutex_unlock(&st->command_buf_lock);

 return err;
}
