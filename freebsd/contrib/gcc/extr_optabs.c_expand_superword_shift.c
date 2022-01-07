
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef scalar_t__ optab ;
typedef enum optab_methods { ____Placeholder_optab_methods } optab_methods ;


 scalar_t__ BITS_PER_WORD ;
 int CONST0_RTX (int ) ;
 scalar_t__ GEN_INT (scalar_t__) ;
 scalar_t__ ashr_optab ;
 int emit_move_insn (scalar_t__,int ) ;
 int force_expand_binop (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int) ;
 int word_mode ;

__attribute__((used)) static bool
expand_superword_shift (optab binoptab, rtx outof_input, rtx superword_op1,
   rtx outof_target, rtx into_target,
   int unsignedp, enum optab_methods methods)
{
  if (into_target != 0)
    if (!force_expand_binop (word_mode, binoptab, outof_input, superword_op1,
        into_target, unsignedp, methods))
      return 0;

  if (outof_target != 0)
    {


      if (binoptab != ashr_optab)
 emit_move_insn (outof_target, CONST0_RTX (word_mode));
      else
 if (!force_expand_binop (word_mode, binoptab,
     outof_input, GEN_INT (BITS_PER_WORD - 1),
     outof_target, unsignedp, methods))
   return 0;
    }
  return 1;
}
