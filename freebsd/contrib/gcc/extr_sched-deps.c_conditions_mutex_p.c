
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ COMPARISON_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ XEXP (int ,int) ;
 scalar_t__ reversed_comparison_code (int ,int *) ;

__attribute__((used)) static int
conditions_mutex_p (rtx cond1, rtx cond2)
{
  if (COMPARISON_P (cond1)
      && COMPARISON_P (cond2)
      && GET_CODE (cond1) == reversed_comparison_code (cond2, ((void*)0))
      && XEXP (cond1, 0) == XEXP (cond2, 0)
      && XEXP (cond1, 1) == XEXP (cond2, 1))
    return 1;
  return 0;
}
