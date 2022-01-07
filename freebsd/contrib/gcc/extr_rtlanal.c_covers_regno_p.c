
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PARALLEL ;
 scalar_t__ XEXP (int ,int ) ;
 int XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;
 int covers_regno_no_parallel_p (scalar_t__,unsigned int) ;

__attribute__((used)) static bool
covers_regno_p (rtx dest, unsigned int test_regno)
{
  if (GET_CODE (dest) == PARALLEL)
    {



      int i;

      for (i = XVECLEN (dest, 0) - 1; i >= 0; i--)
 {
   rtx inner = XEXP (XVECEXP (dest, 0, i), 0);
   if (inner != NULL_RTX
       && covers_regno_no_parallel_p (inner, test_regno))
     return 1;
 }

      return 0;
    }
  else
    return covers_regno_no_parallel_p (dest, test_regno);
}
