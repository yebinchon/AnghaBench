
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ int32_t ;
typedef enum mt9t013_test_mode { ____Placeholder_mt9t013_test_mode } mt9t013_test_mode ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {int ttbl_size; int ttbl; } ;


 int GROUPED_PARAMETER_HOLD ;
 int GROUPED_PARAMETER_UPDATE ;
 int REG_GROUPED_PARAMETER_HOLD ;
 int REG_TEST_PATTERN_MODE ;
 int TEST_OFF ;
 TYPE_2__* mt9t013_client ;
 scalar_t__ mt9t013_i2c_write_w (int ,int ,int ) ;
 scalar_t__ mt9t013_i2c_write_w_table (int ,int ) ;
 TYPE_1__ mt9t013_regs ;

__attribute__((used)) static int32_t mt9t013_test(enum mt9t013_test_mode mo)
{
 int32_t rc = 0;

 rc = mt9t013_i2c_write_w(mt9t013_client->addr,
   REG_GROUPED_PARAMETER_HOLD,
   GROUPED_PARAMETER_HOLD);
 if (rc < 0)
  return rc;

 if (mo == TEST_OFF)
  return 0;
 else {
  rc = mt9t013_i2c_write_w_table(mt9t013_regs.ttbl,
    mt9t013_regs.ttbl_size);
  if (rc < 0)
   return rc;
  rc = mt9t013_i2c_write_w(mt9t013_client->addr,
    REG_TEST_PATTERN_MODE, (uint16_t)mo);
  if (rc < 0)
   return rc;
 }

 rc = mt9t013_i2c_write_w(mt9t013_client->addr,
   REG_GROUPED_PARAMETER_HOLD,
   GROUPED_PARAMETER_UPDATE);
 if (rc < 0)
  return rc;

 return rc;
}
