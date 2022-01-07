
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {int addr; } ;


 int MT9T013_REG_RESET_REGISTER ;
 int mdelay (int) ;
 TYPE_1__* mt9t013_client ;
 scalar_t__ mt9t013_i2c_write_w (int ,int ,int) ;
 scalar_t__ mt9t013_write_exp_gain (int ,int ) ;

__attribute__((used)) static int32_t mt9t013_set_pict_exp_gain(uint16_t gain, uint32_t line)
{
 int32_t rc = 0;

 rc = mt9t013_write_exp_gain(gain, line);
 if (rc < 0)
  return rc;

 rc = mt9t013_i2c_write_w(mt9t013_client->addr,
   MT9T013_REG_RESET_REGISTER,
   0x10CC | 0x0002);

 mdelay(5);


 return rc;
}
