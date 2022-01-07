
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum insn_code { ____Placeholder_insn_code } insn_code ;


 int CODE_FOR_nothing ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_UNSIGNED (int ) ;
 int* vcond_gen_code ;
 int* vcondu_gen_code ;

__attribute__((used)) static inline enum insn_code
get_vcond_icode (tree expr, enum machine_mode mode)
{
  enum insn_code icode = CODE_FOR_nothing;

  if (TYPE_UNSIGNED (TREE_TYPE (expr)))
    icode = vcondu_gen_code[mode];
  else
    icode = vcond_gen_code[mode];
  return icode;
}
