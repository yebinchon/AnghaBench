
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int APPLY_RESULT_SIZE ;
 int BITS_PER_UNIT ;
 int CEIL (int,int) ;
 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ FUNCTION_VALUE_REGNO_P (int) ;
 int GET_MODE_ALIGNMENT (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 int VOIDmode ;
 int* apply_result_mode ;
 int gcc_assert (int) ;
 int* reg_raw_mode ;

__attribute__((used)) static int
apply_result_size (void)
{
  static int size = -1;
  int align, regno;
  enum machine_mode mode;


  if (size < 0)
    {
      size = 0;

      for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
 if (FUNCTION_VALUE_REGNO_P (regno))
   {
     mode = reg_raw_mode[regno];

     gcc_assert (mode != VOIDmode);

     align = GET_MODE_ALIGNMENT (mode) / BITS_PER_UNIT;
     if (size % align != 0)
       size = CEIL (size, align) * align;
     size += GET_MODE_SIZE (mode);
     apply_result_mode[regno] = mode;
   }
 else
   apply_result_mode[regno] = VOIDmode;






    }
  return size;
}
