
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mips_cl_insn {TYPE_1__* insn_mo; } ;
struct TYPE_4__ {scalar_t__ mips16; } ;
struct TYPE_3__ {int pinfo; } ;


 int INSN_COND_BRANCH_DELAY ;
 int INSN_COND_BRANCH_LIKELY ;
 int INSN_UNCOND_BRANCH_DELAY ;
 int MIPS16_INSN_BRANCH ;
 int NOP_INSN ;
 TYPE_2__ mips_opts ;
 int nops_for_insn (struct mips_cl_insn const*,struct mips_cl_insn const*) ;
 int nops_for_sequence (int,struct mips_cl_insn const*,struct mips_cl_insn const*,...) ;

__attribute__((used)) static int
nops_for_insn_or_target (const struct mips_cl_insn *history,
    const struct mips_cl_insn *insn)
{
  int nops, tmp_nops;

  nops = nops_for_insn (history, insn);
  if (insn->insn_mo->pinfo & (INSN_UNCOND_BRANCH_DELAY
         | INSN_COND_BRANCH_DELAY
         | INSN_COND_BRANCH_LIKELY))
    {
      tmp_nops = nops_for_sequence (2, history, insn, NOP_INSN);
      if (tmp_nops > nops)
 nops = tmp_nops;
    }
  else if (mips_opts.mips16 && (insn->insn_mo->pinfo & MIPS16_INSN_BRANCH))
    {
      tmp_nops = nops_for_sequence (1, history, insn);
      if (tmp_nops > nops)
 nops = tmp_nops;
    }
  return nops;
}
