
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_6__ {unsigned int instruction; int error; TYPE_2__* operands; TYPE_1__ reloc; } ;
struct TYPE_5__ {int writeback; unsigned int imm; } ;


 scalar_t__ BFD_RELOC_UNUSED ;
 int REG_LR ;
 int REG_PC ;
 unsigned int THUMB_OP16 (unsigned int) ;
 unsigned int THUMB_OP32 (unsigned int) ;
 unsigned int THUMB_PP_PC_LR ;
 int TRUE ;
 unsigned int T_MNEM_pop ;
 unsigned int T_MNEM_push ;
 int _ (char*) ;
 int constraint (int,int ) ;
 int encode_thumb2_ldmstm (int,unsigned int,int ) ;
 TYPE_3__ inst ;
 scalar_t__ unified_syntax ;

__attribute__((used)) static void
do_t_push_pop (void)
{
  unsigned mask;

  constraint (inst.operands[0].writeback,
       _("push/pop do not support {reglist}^"));
  constraint (inst.reloc.type != BFD_RELOC_UNUSED,
       _("expression too complex"));

  mask = inst.operands[0].imm;
  if ((mask & ~0xff) == 0)
    inst.instruction = THUMB_OP16 (inst.instruction) | mask;
  else if ((inst.instruction == T_MNEM_push
     && (mask & ~0xff) == 1 << REG_LR)
    || (inst.instruction == T_MNEM_pop
        && (mask & ~0xff) == 1 << REG_PC))
    {
      inst.instruction = THUMB_OP16 (inst.instruction);
      inst.instruction |= THUMB_PP_PC_LR;
      inst.instruction |= mask & 0xff;
    }
  else if (unified_syntax)
    {
      inst.instruction = THUMB_OP32 (inst.instruction);
      encode_thumb2_ldmstm(13, mask, TRUE);
    }
  else
    {
      inst.error = _("invalid register list to push/pop instruction");
      return;
    }
}
