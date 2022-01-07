
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {int lctbl_size; int lctbl; } ;


 scalar_t__ mt9t013_i2c_write_w_table (int ,int ) ;
 TYPE_1__ mt9t013_regs ;

__attribute__((used)) static int32_t mt9t013_set_lc(void)
{
 int32_t rc;

 rc = mt9t013_i2c_write_w_table(mt9t013_regs.lctbl, mt9t013_regs.lctbl_size);
 if (rc < 0)
  return rc;

 return rc;
}
