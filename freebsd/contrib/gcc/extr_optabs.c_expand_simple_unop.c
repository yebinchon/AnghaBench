
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int optab ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int * code_to_optab ;
 int expand_unop (int,int ,int ,int ,int) ;
 int gcc_assert (int ) ;

rtx
expand_simple_unop (enum machine_mode mode, enum rtx_code code, rtx op0,
      rtx target, int unsignedp)
{
  optab unop = code_to_optab[(int) code];
  gcc_assert (unop);

  return expand_unop (mode, unop, op0, target, unsignedp);
}
