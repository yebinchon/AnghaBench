
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum insn_code { ____Placeholder_insn_code } insn_code ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int mode; int (* predicate ) (int ,int) ;} ;


 int TREE_CHAIN (int ) ;
 int TREE_VALUE (int ) ;
 int const0_rtx ;
 int copy_to_mode_reg (int,int ) ;
 int error (char*) ;
 int expand_normal (int ) ;
 TYPE_2__* insn_data ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

__attribute__((used)) static rtx
mips_prepare_builtin_arg (enum insn_code icode,
     unsigned int op, tree *arglist)
{
  rtx value;
  enum machine_mode mode;

  value = expand_normal (TREE_VALUE (*arglist));
  mode = insn_data[icode].operand[op].mode;
  if (!insn_data[icode].operand[op].predicate (value, mode))
    {
      value = copy_to_mode_reg (mode, value);

      if (!insn_data[icode].operand[op].predicate (value, mode))
 {
   error ("invalid argument to builtin function");
   return const0_rtx;
 }
    }

  *arglist = TREE_CHAIN (*arglist);
  return value;
}
