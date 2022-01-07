
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ DECIMAL_FLOAT_MODE_P (int) ;
 int DFmode ;
 int FIRST_FLOAT_REG ;
 int FIRST_MMX_REG ;
 int FIRST_SSE_REG ;
 int GET_MODE_SIZE (int) ;
 int SCALAR_FLOAT_MODE_P (int) ;
 int SFmode ;
 int TARGET_64BIT ;
 int TARGET_FLOAT_RETURNS_IN_80387 ;
 scalar_t__ TARGET_MMX ;
 scalar_t__ TARGET_SSE ;
 int TImode ;
 scalar_t__ VECTOR_MODE_P (int) ;
 int gcc_assert (int) ;
 int ix86_function_sseregparm (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
ix86_value_regno (enum machine_mode mode, tree func, tree fntype)
{
  gcc_assert (!TARGET_64BIT);




  if (VECTOR_MODE_P (mode) && GET_MODE_SIZE (mode) == 8)
    return TARGET_MMX ? FIRST_MMX_REG : 0;




  if (mode == TImode || (VECTOR_MODE_P (mode) && GET_MODE_SIZE (mode) == 16))
    return TARGET_SSE ? FIRST_SSE_REG : 0;


  if (DECIMAL_FLOAT_MODE_P (mode))
    return 0;


  if (!SCALAR_FLOAT_MODE_P (mode) || !TARGET_FLOAT_RETURNS_IN_80387)
    return 0;



  if ((func || fntype)
      && (mode == SFmode || mode == DFmode))
    {
      int sse_level = ix86_function_sseregparm (fntype, func);
      if ((sse_level >= 1 && mode == SFmode)
   || (sse_level == 2 && mode == DFmode))
        return FIRST_SSE_REG;
    }

  return FIRST_FLOAT_REG;
}
