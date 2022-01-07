
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIRST_FLOAT_REG ;
 int FIRST_MMX_REG ;
 int FIRST_SSE_REG ;
 int TARGET_64BIT ;
 scalar_t__ TARGET_FLOAT_RETURNS_IN_80387 ;
 scalar_t__ TARGET_MACHO ;
 scalar_t__ TARGET_MMX ;
 scalar_t__ TARGET_SSE ;

bool
ix86_function_value_regno_p (int regno)
{
  if (TARGET_MACHO)
    {
      if (!TARGET_64BIT)
        {
          return ((regno) == 0
                  || ((regno) == FIRST_FLOAT_REG && TARGET_FLOAT_RETURNS_IN_80387)
                  || ((regno) == FIRST_SSE_REG && TARGET_SSE));
        }
      return ((regno) == 0 || (regno) == FIRST_FLOAT_REG
              || ((regno) == FIRST_SSE_REG && TARGET_SSE)
              || ((regno) == FIRST_FLOAT_REG && TARGET_FLOAT_RETURNS_IN_80387));
      }
  else
    {
      if (regno == 0
          || (regno == FIRST_FLOAT_REG && TARGET_FLOAT_RETURNS_IN_80387)
          || (regno == FIRST_SSE_REG && TARGET_SSE))
        return 1;

      if (!TARGET_64BIT
          && (regno == FIRST_MMX_REG && TARGET_MMX))
     return 1;

      return 0;
    }
}
