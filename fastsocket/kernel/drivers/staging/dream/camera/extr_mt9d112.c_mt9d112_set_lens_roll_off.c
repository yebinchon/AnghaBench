
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_2__ {int rftbl_size; int * rftbl; } ;


 int mt9d112_i2c_write_table (int *,int ) ;
 TYPE_1__ mt9d112_regs ;

__attribute__((used)) static int32_t mt9d112_set_lens_roll_off(void)
{
 int32_t rc = 0;
 rc = mt9d112_i2c_write_table(&mt9d112_regs.rftbl[0],
         mt9d112_regs.rftbl_size);
 return rc;
}
