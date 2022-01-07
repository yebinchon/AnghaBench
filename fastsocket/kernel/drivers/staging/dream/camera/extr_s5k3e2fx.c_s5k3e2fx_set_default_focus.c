
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {scalar_t__ curr_lens_pos; } ;


 TYPE_2__* s5k3e2fx_client ;
 TYPE_1__* s5k3e2fx_ctrl ;
 scalar_t__ s5k3e2fx_i2c_write_b (int ,int,int ) ;

__attribute__((used)) static int32_t s5k3e2fx_set_default_focus(void)
{
 int32_t rc = 0;

 rc = s5k3e2fx_i2c_write_b(s5k3e2fx_client->addr,
   0x3131, 0);
 if (rc < 0)
  return rc;

 rc = s5k3e2fx_i2c_write_b(s5k3e2fx_client->addr,
   0x3132, 0);
 if (rc < 0)
  return rc;

 s5k3e2fx_ctrl->curr_lens_pos = 0;

 return rc;
}
