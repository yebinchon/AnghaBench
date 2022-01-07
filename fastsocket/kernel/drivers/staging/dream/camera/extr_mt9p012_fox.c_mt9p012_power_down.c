
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_2__ {int addr; } ;


 int MT9P012_REG_RESET_REGISTER ;
 int MT9P012_RESET_REGISTER_PWOFF ;
 int mdelay (int) ;
 TYPE_1__* mt9p012_client ;
 int mt9p012_i2c_write_w (int ,int ,int ) ;

__attribute__((used)) static int32_t mt9p012_power_down(void)
{
 int32_t rc = 0;

 rc = mt9p012_i2c_write_w(mt9p012_client->addr,
  MT9P012_REG_RESET_REGISTER,
  MT9P012_RESET_REGISTER_PWOFF);

 mdelay(5);
 return rc;
}
