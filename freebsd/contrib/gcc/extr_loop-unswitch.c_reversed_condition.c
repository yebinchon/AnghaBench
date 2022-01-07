
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int GET_MODE (int ) ;
 int NULL_RTX ;
 int UNKNOWN ;
 int XEXP (int ,int) ;
 int gen_rtx_fmt_ee (int,int ,int ,int ) ;
 int reversed_comparison_code (int ,int *) ;

rtx
reversed_condition (rtx cond)
{
  enum rtx_code reversed;
  reversed = reversed_comparison_code (cond, ((void*)0));
  if (reversed == UNKNOWN)
    return NULL_RTX;
  else
    return gen_rtx_fmt_ee (reversed,
      GET_MODE (cond), XEXP (cond, 0),
      XEXP (cond, 1));
}
