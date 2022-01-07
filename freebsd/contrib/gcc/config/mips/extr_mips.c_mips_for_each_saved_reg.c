
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mips_save_restore_fn ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {TYPE_2__* machine; } ;
struct TYPE_4__ {int fmask; scalar_t__ fp_sp_offset; int mask; scalar_t__ gp_sp_offset; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ BITSET_P (int ,int) ;
 int DFmode ;
 int FP_INC ;
 int FP_REG_FIRST ;
 int FP_REG_LAST ;
 scalar_t__ GET_MODE_SIZE (int) ;
 int GP_REG_FIRST ;
 int GP_REG_LAST ;
 int SFmode ;
 scalar_t__ TARGET_SINGLE_FLOAT ;
 TYPE_3__* cfun ;
 int gpr_mode ;
 int mips_save_restore_reg (int,int,scalar_t__,int ) ;

__attribute__((used)) static void
mips_for_each_saved_reg (HOST_WIDE_INT sp_offset, mips_save_restore_fn fn)
{


  enum machine_mode fpr_mode;
  HOST_WIDE_INT offset;
  int regno;





  offset = cfun->machine->frame.gp_sp_offset - sp_offset;
  for (regno = GP_REG_LAST; regno >= GP_REG_FIRST; regno--)
    if ((((cfun->machine->frame.mask) & (1L << (regno - GP_REG_FIRST))) != 0))
      {
 mips_save_restore_reg (gpr_mode, regno, offset, fn);
 offset -= GET_MODE_SIZE (gpr_mode);
      }



  offset = cfun->machine->frame.fp_sp_offset - sp_offset;
  fpr_mode = (TARGET_SINGLE_FLOAT ? SFmode : DFmode);
  for (regno = (FP_REG_LAST - FP_INC + 1);
       regno >= FP_REG_FIRST;
       regno -= FP_INC)
    if ((((cfun->machine->frame.fmask) & (1L << (regno - FP_REG_FIRST))) != 0))
      {
 mips_save_restore_reg (fpr_mode, regno, offset, fn);
 offset -= GET_MODE_SIZE (fpr_mode);
      }

}
