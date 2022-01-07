
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {int addr; } ;


 int MT9T013_REG_RESET_REGISTER ;
 int MT9T013_RESET_REGISTER_PWOFF ;
 int mdelay (int) ;
 TYPE_1__* mt9t013_client ;
 scalar_t__ mt9t013_i2c_write_w (int ,int ,int ) ;

__attribute__((used)) static int32_t mt9t013_power_down(void)
{
 int32_t rc = 0;

 rc = mt9t013_i2c_write_w(mt9t013_client->addr,
   MT9T013_REG_RESET_REGISTER,
   MT9T013_RESET_REGISTER_PWOFF);
 if (rc >= 0)
  mdelay(5);
 return rc;
}
