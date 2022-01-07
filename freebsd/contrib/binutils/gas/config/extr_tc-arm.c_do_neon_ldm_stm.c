
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; int writeback; int reg; scalar_t__ issingle; } ;


 int HI1 (int) ;
 int LOW4 (int) ;
 int _ (char*) ;
 int constraint (int,int ) ;
 int do_vfp_cond_or_thumb () ;
 int do_vfp_nsyn_ldm_stm (int) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_neon_ldm_stm (void)
{

  int is_dbmode = (inst.instruction & (1 << 24)) != 0;
  unsigned offsetbits = inst.operands[1].imm * 2;

  if (inst.operands[1].issingle)
    {
      do_vfp_nsyn_ldm_stm (is_dbmode);
      return;
    }

  constraint (is_dbmode && !inst.operands[0].writeback,
              _("writeback (!) must be used for VLDMDB and VSTMDB"));

  constraint (inst.operands[1].imm < 1 || inst.operands[1].imm > 16,
              _("register list must contain at least 1 and at most 16 "
                "registers"));

  inst.instruction |= inst.operands[0].reg << 16;
  inst.instruction |= inst.operands[0].writeback << 21;
  inst.instruction |= LOW4 (inst.operands[1].reg) << 12;
  inst.instruction |= HI1 (inst.operands[1].reg) << 22;

  inst.instruction |= offsetbits;

  do_vfp_cond_or_thumb ();
}
