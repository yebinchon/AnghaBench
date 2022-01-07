
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {int rftbl_size; int rftbl; int lctbl_size; int lctbl; } ;


 scalar_t__ mt9p012_i2c_write_w_table (int ,int ) ;
 TYPE_1__ mt9p012_regs ;

__attribute__((used)) static int32_t mt9p012_set_lc(void)
{
 int32_t rc;

 rc = mt9p012_i2c_write_w_table(mt9p012_regs.lctbl, mt9p012_regs.lctbl_size);
 if (rc < 0)
  return rc;

 rc = mt9p012_i2c_write_w_table(mt9p012_regs.rftbl, mt9p012_regs.rftbl_size);

 return rc;
}
