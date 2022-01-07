
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ int32_t ;
typedef enum msm_s_test_mode { ____Placeholder_msm_s_test_mode } msm_s_test_mode ;
struct TYPE_2__ {int addr; } ;


 int REG_TEST_PATTERN_MODE ;
 int S_TEST_OFF ;
 TYPE_1__* s5k3e2fx_client ;
 scalar_t__ s5k3e2fx_i2c_write_b (int ,int ,int ) ;

__attribute__((used)) static int32_t s5k3e2fx_test(enum msm_s_test_mode mo)
{
 int32_t rc = 0;

 if (mo == S_TEST_OFF)
  rc = 0;
 else
  rc = s5k3e2fx_i2c_write_b(s5k3e2fx_client->addr,
   REG_TEST_PATTERN_MODE, (uint16_t)mo);

 return rc;
}
