
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nargs; TYPE_1__* arg; } ;
typedef TYPE_2__ ins ;
struct TYPE_8__ {int mnemonic; } ;
struct TYPE_6__ {int X_op; int constant; int type; } ;


 scalar_t__ IS_INSN_MNEMONIC (char*) ;
 int O_constant ;
 int arg_ic ;
 int ** cr16_no_op_insn ;
 int gettrap (char*) ;
 TYPE_5__* instruction ;
 int parse_operands (TYPE_2__*,char*) ;
 scalar_t__ streq (int *,int ) ;

__attribute__((used)) static void
parse_insn (ins *insn, char *operands)
{
  int i;


  for (i = 0; cr16_no_op_insn[i] != ((void*)0); i++)
  {
    if (streq (cr16_no_op_insn[i], instruction->mnemonic))
    {
      insn->nargs = 0;
      return;
    }
  }


  if (IS_INSN_MNEMONIC ("excp"))
    {
      insn->nargs = 1;
      insn->arg[0].type = arg_ic;
      insn->arg[0].constant = gettrap (operands);
      insn->arg[0].X_op = O_constant;
      return;
    }

  if (operands != ((void*)0))
    parse_operands (insn, operands);
}
