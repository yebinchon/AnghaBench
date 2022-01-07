
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DFmode ;
 scalar_t__ FLOAT_CLASS_P (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ MAYBE_FLOAT_CLASS_P (int) ;
 scalar_t__ MAYBE_MMX_CLASS_P (int) ;
 scalar_t__ MAYBE_SSE_CLASS_P (int) ;
 scalar_t__ MMX_CLASS_P (int) ;
 int SFmode ;
 scalar_t__ SSE_CLASS_P (int) ;
 int TARGET_INTER_UNIT_MOVES ;
 int TARGET_SSE2 ;
 scalar_t__ UNITS_PER_WORD ;
 int gcc_assert (int) ;
 int optimize_size ;

int
ix86_secondary_memory_needed (enum reg_class class1, enum reg_class class2,
         enum machine_mode mode, int strict)
{
  if (MAYBE_FLOAT_CLASS_P (class1) != FLOAT_CLASS_P (class1)
      || MAYBE_FLOAT_CLASS_P (class2) != FLOAT_CLASS_P (class2)
      || MAYBE_SSE_CLASS_P (class1) != SSE_CLASS_P (class1)
      || MAYBE_SSE_CLASS_P (class2) != SSE_CLASS_P (class2)
      || MAYBE_MMX_CLASS_P (class1) != MMX_CLASS_P (class1)
      || MAYBE_MMX_CLASS_P (class2) != MMX_CLASS_P (class2))
    {
      gcc_assert (!strict);
      return 1;
    }

  if (FLOAT_CLASS_P (class1) != FLOAT_CLASS_P (class2))
    return 1;




  if (MMX_CLASS_P (class1) != MMX_CLASS_P (class2))
    return 1;

  if (SSE_CLASS_P (class1) != SSE_CLASS_P (class2))
    {

      if (!TARGET_SSE2)
 return 1;



      if (!TARGET_INTER_UNIT_MOVES && !optimize_size)
 return 1;


      if (GET_MODE_SIZE (mode) > UNITS_PER_WORD)
 return 1;




      if (mode == SFmode || mode == DFmode)
 return 1;
    }

  return 0;
}
