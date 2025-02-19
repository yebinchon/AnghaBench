
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rtl; } ;
struct TYPE_6__ {TYPE_2__ il; } ;
struct TYPE_4__ {int global_live_at_end; } ;


 TYPE_3__* ENTRY_BLOCK_PTR ;
 scalar_t__ NUM_FIXED_BLOCKS ;
 scalar_t__ REGNO_REG_SET_P (int ,int) ;
 int REG_N_SETS (int) ;
 scalar_t__ n_basic_blocks ;
 int regs_live_at_setjmp ;

int
regno_clobbered_at_setjmp (int regno)
{
  if (n_basic_blocks == NUM_FIXED_BLOCKS)
    return 0;

  return ((REG_N_SETS (regno) > 1
    || REGNO_REG_SET_P (ENTRY_BLOCK_PTR->il.rtl->global_live_at_end,
               regno))
   && REGNO_REG_SET_P (regs_live_at_setjmp, regno));
}
