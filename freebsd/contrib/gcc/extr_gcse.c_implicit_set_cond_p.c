
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ CONST_DOUBLE ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ HONOR_SIGNED_ZEROS (int) ;
 scalar_t__ REAL_VALUES_EQUAL (int ,int ) ;
 int REAL_VALUE_FROM_CONST_DOUBLE (int ,int ) ;
 int XEXP (int ,int) ;
 int dconst0 ;
 int gcse_constant_p (int ) ;

__attribute__((used)) static bool
implicit_set_cond_p (rtx cond)
{
  enum machine_mode mode = GET_MODE (XEXP (cond, 0));
  rtx cst = XEXP (cond, 1);



  if (HONOR_SIGNED_ZEROS (mode))
    {





      if (GET_CODE (cst) == CONST_DOUBLE)
 {
   REAL_VALUE_TYPE d;
   REAL_VALUE_FROM_CONST_DOUBLE (d, cst);
   if (REAL_VALUES_EQUAL (d, dconst0))
     return 0;
 }
      else
 return 0;
    }

  return gcse_constant_p (cst);
}
