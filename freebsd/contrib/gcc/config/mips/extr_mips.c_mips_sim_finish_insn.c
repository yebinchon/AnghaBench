
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_sim {int dummy; } ;
typedef int rtx ;




 int GET_CODE (int ) ;
 int INSN_ANNULLED_BRANCH_P (int ) ;

 scalar_t__ JUMP_P (int ) ;
 int SEQ_BEGIN (int ) ;
 int mips_sim_issue_nop (struct mips_sim*) ;
 int mips_sim_reset (struct mips_sim*) ;

__attribute__((used)) static void
mips_sim_finish_insn (struct mips_sim *state, rtx insn)
{

  if (JUMP_P (insn))
    mips_sim_issue_nop (state);

  switch (GET_CODE (SEQ_BEGIN (insn)))
    {
    case 129:
    case 130:

      mips_sim_reset (state);
      break;

    case 128:







      if (INSN_ANNULLED_BRANCH_P (SEQ_BEGIN (insn)))
 mips_sim_reset (state);
      break;

    default:
      break;
    }
}
