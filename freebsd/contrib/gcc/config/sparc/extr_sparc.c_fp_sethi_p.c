
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ CONST_DOUBLE ;
 scalar_t__ GET_CODE (int ) ;
 int REAL_VALUE_FROM_CONST_DOUBLE (int ,int ) ;
 int REAL_VALUE_TO_TARGET_SINGLE (int ,long) ;
 scalar_t__ SPARC_SETHI_P (long) ;
 int SPARC_SIMM13_P (long) ;

int
fp_sethi_p (rtx op)
{
  if (GET_CODE (op) == CONST_DOUBLE)
    {
      REAL_VALUE_TYPE r;
      long i;

      REAL_VALUE_FROM_CONST_DOUBLE (r, op);
      REAL_VALUE_TO_TARGET_SINGLE (r, i);
      return !SPARC_SIMM13_P (i) && SPARC_SETHI_P (i);
    }

  return 0;
}
