
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nargs; TYPE_1__* arg; } ;
typedef TYPE_2__ ins ;
struct TYPE_7__ {int flags; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ r; unsigned int constant; } ;


 scalar_t__ IS_INSN_MNEMONIC (char*) ;
 scalar_t__ IS_INSN_TYPE (int ) ;
 int LD_STOR_INS_INC ;
 int NO_RPTR ;
 int NO_SP ;
 scalar_t__ RA ;
 int _ (char*) ;
 scalar_t__ arg_r ;
 int as_bad (int ,int) ;
 int as_warn (int ) ;
 int getreg_image (int) ;
 int ins_parse ;
 TYPE_4__* instruction ;
 scalar_t__ ra ;
 int sp ;

__attribute__((used)) static void
warn_if_needed (ins *insn)
{



  if (IS_INSN_TYPE (LD_STOR_INS_INC))
    {

      if ((insn->arg[0].type == arg_r) || (insn->arg[1].type == arg_r))
        if (insn->arg[0].r == insn->arg[1].r)
          as_bad (_("Same src/dest register is used (`r%d'), result is undefined"), insn->arg[0].r);
    }

  if (IS_INSN_MNEMONIC ("pop")
      || IS_INSN_MNEMONIC ("push")
      || IS_INSN_MNEMONIC ("popret"))
    {
      unsigned int count = insn->arg[0].constant, reg_val;



     if (insn->nargs > 2)
       {
         reg_val = getreg_image (insn->arg[1].r);

         if ( ((reg_val == 9) && (count > 7))
      || ((reg_val == 10) && (count > 6))
      || ((reg_val == 11) && (count > 5))
      || ((reg_val == 12) && (count > 4))
      || ((reg_val == 13) && (count > 2))
      || ((reg_val == 14) && (count > 0)))
           as_warn (_("RA register is saved twice."));


         if (!(((insn->arg[2].r) == ra) || ((insn->arg[2].r) == RA)))
           as_bad (_("`%s' Illegal use of registers."), ins_parse);
       }

      if (insn->nargs > 1)
       {
         reg_val = getreg_image (insn->arg[1].r);



         if (((reg_val == 11) && (count > 7))
      || ((reg_val == 12) && (count > 6))
      || ((reg_val == 13) && (count > 4))
      || ((reg_val == 14) && (count > 2))
      || ((reg_val == 15) && (count > 0)))
           as_bad (_("`%s' Illegal count-register combination."), ins_parse);
       }
     else
       {

         if (!(((insn->arg[0].r) == ra) || ((insn->arg[0].r) == RA)))
           as_bad (_("`%s' Illegal use of register."), ins_parse);
       }
    }



  if (instruction->flags & NO_SP)
    {
      if (getreg_image (insn->arg[1].r) == getreg_image (sp))
        as_bad (_("`%s' has undefined result"), ins_parse);
    }



  if (instruction->flags & NO_RPTR)
    {
      if ((1 << getreg_image (insn->arg[0].r)) & insn->arg[1].constant)
        as_bad (_("Same src/dest register is used (`r%d'),result is undefined"),
                  getreg_image (insn->arg[0].r));
    }
}
