
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_opcode {int match; } ;
struct mips_cl_insn {int fixed_p; int noreorder_p; scalar_t__ mips16_absolute_jump_p; int ** fixp; scalar_t__ where; int * frag; int insn_opcode; scalar_t__ extend; int use_extend; struct mips_opcode const* insn_mo; } ;
struct TYPE_2__ {scalar_t__ noreorder; } ;


 size_t ARRAY_SIZE (int **) ;
 int FALSE ;
 TYPE_1__ mips_opts ;

__attribute__((used)) static void
create_insn (struct mips_cl_insn *insn, const struct mips_opcode *mo)
{
  size_t i;

  insn->insn_mo = mo;
  insn->use_extend = FALSE;
  insn->extend = 0;
  insn->insn_opcode = mo->match;
  insn->frag = ((void*)0);
  insn->where = 0;
  for (i = 0; i < ARRAY_SIZE (insn->fixp); i++)
    insn->fixp[i] = ((void*)0);
  insn->fixed_p = (mips_opts.noreorder > 0);
  insn->noreorder_p = (mips_opts.noreorder > 0);
  insn->mips16_absolute_jump_p = 0;
}
