
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ ALTIVEC_REGNO_P (int) ;
 int ALTIVEC_VECTOR_MODE (int) ;
 scalar_t__ CR_REGNO_P (int) ;
 int DECIMAL_FLOAT_MODE_P (int) ;
 scalar_t__ FP_REGNO_P (int) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 int HARD_REGNO_NREGS (int,int) ;
 int INT_REGNO_P (int) ;
 scalar_t__ MODE_CC ;
 scalar_t__ MODE_INT ;
 int PSImode ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int) ;
 scalar_t__ SPE_SIMD_REGNO_P (int) ;
 scalar_t__ SPE_VECTOR_MODE (int) ;
 scalar_t__ TARGET_SPE ;
 scalar_t__ UNITS_PER_FP_WORD ;
 scalar_t__ UNITS_PER_WORD ;
 scalar_t__ XER_REGNO_P (int) ;

__attribute__((used)) static int
rs6000_hard_regno_mode_ok (int regno, enum machine_mode mode)
{


  if (INT_REGNO_P (regno))
    return INT_REGNO_P (regno + HARD_REGNO_NREGS (regno, mode) - 1);



  if (FP_REGNO_P (regno))
    return
      (SCALAR_FLOAT_MODE_P (mode)
       && !DECIMAL_FLOAT_MODE_P (mode)
       && FP_REGNO_P (regno + HARD_REGNO_NREGS (regno, mode) - 1))
      || (GET_MODE_CLASS (mode) == MODE_INT
   && GET_MODE_SIZE (mode) == UNITS_PER_FP_WORD);


  if (CR_REGNO_P (regno))
    return GET_MODE_CLASS (mode) == MODE_CC;

  if (XER_REGNO_P (regno))
    return mode == PSImode;


  if (ALTIVEC_REGNO_P (regno))
    return ALTIVEC_VECTOR_MODE (mode);


  if (SPE_SIMD_REGNO_P (regno) && TARGET_SPE && SPE_VECTOR_MODE (mode))
    return 1;




  return GET_MODE_SIZE (mode) <= UNITS_PER_WORD;
}
