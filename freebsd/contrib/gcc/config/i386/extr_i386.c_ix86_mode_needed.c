
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum attr_i387_cw { ____Placeholder_attr_i387_cw } attr_i387_cw ;


 scalar_t__ ASM_INPUT ;
 scalar_t__ CALL_P (int ) ;
 scalar_t__ GET_CODE (int ) ;

 int I387_CW_ANY ;
 int I387_CW_CEIL ;
 int I387_CW_FLOOR ;
 int I387_CW_MASK_PM ;
 int I387_CW_TRUNC ;
 int I387_CW_UNINITIALIZED ;



 scalar_t__ NONJUMP_INSN_P (int ) ;
 int PATTERN (int ) ;
 scalar_t__ asm_noperands (int ) ;
 int gcc_unreachable () ;
 int get_attr_i387_cw (int ) ;
 scalar_t__ recog_memoized (int ) ;

int
ix86_mode_needed (int entity, rtx insn)
{
  enum attr_i387_cw mode;






  if (CALL_P (insn)
      || (NONJUMP_INSN_P (insn)
   && (asm_noperands (PATTERN (insn)) >= 0
       || GET_CODE (PATTERN (insn)) == ASM_INPUT)))
    return I387_CW_UNINITIALIZED;

  if (recog_memoized (insn) < 0)
    return I387_CW_ANY;

  mode = get_attr_i387_cw (insn);

  switch (entity)
    {
    case 128:
      if (mode == I387_CW_TRUNC)
 return mode;
      break;

    case 130:
      if (mode == I387_CW_FLOOR)
 return mode;
      break;

    case 131:
      if (mode == I387_CW_CEIL)
 return mode;
      break;

    case 129:
      if (mode == I387_CW_MASK_PM)
 return mode;
      break;

    default:
      gcc_unreachable ();
    }

  return I387_CW_ANY;
}
