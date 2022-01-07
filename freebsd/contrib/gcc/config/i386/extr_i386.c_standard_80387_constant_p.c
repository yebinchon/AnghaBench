
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ CONST0_RTX (scalar_t__) ;
 scalar_t__ CONST1_RTX (scalar_t__) ;
 scalar_t__ CONST_DOUBLE ;
 int FLOAT_MODE_P (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 int REAL_VALUE_FROM_CONST_DOUBLE (int ,scalar_t__) ;
 int TUNEMASK ;
 scalar_t__ XFmode ;
 int ext_80387_constants_init ;
 int * ext_80387_constants_table ;
 int init_ext_80387_constants () ;
 scalar_t__ optimize_size ;
 scalar_t__ real_identical (int *,int *) ;
 int x86_ext_80387_constants ;

int
standard_80387_constant_p (rtx x)
{
  if (GET_CODE (x) != CONST_DOUBLE || !FLOAT_MODE_P (GET_MODE (x)))
    return -1;

  if (x == CONST0_RTX (GET_MODE (x)))
    return 1;
  if (x == CONST1_RTX (GET_MODE (x)))
    return 2;



  if (GET_MODE (x) == XFmode
      && (optimize_size || x86_ext_80387_constants & TUNEMASK))
    {
      REAL_VALUE_TYPE r;
      int i;

      if (! ext_80387_constants_init)
 init_ext_80387_constants ();

      REAL_VALUE_FROM_CONST_DOUBLE (r, x);
      for (i = 0; i < 5; i++)
        if (real_identical (&r, &ext_80387_constants_table[i]))
   return i + 3;
    }

  return 0;
}
