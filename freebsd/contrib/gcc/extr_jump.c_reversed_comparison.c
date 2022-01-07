
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int NULL_RTX ;
 int UNKNOWN ;
 int VOIDmode ;
 int XEXP (int ,int) ;
 int reversed_comparison_code (int ,int ) ;
 int simplify_gen_relational (int,int,int ,int ,int ) ;

rtx
reversed_comparison (rtx exp, enum machine_mode mode)
{
  enum rtx_code reversed_code = reversed_comparison_code (exp, NULL_RTX);
  if (reversed_code == UNKNOWN)
    return NULL_RTX;
  else
    return simplify_gen_relational (reversed_code, mode, VOIDmode,
                                    XEXP (exp, 0), XEXP (exp, 1));
}
