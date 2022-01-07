
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GEU ;
 int GTU ;
 int LEU ;
 int LTU ;
 int NULL_RTX ;
 int do_compare_rtx_and_jump (int ,int ,int,int,int,int ,int ,int ) ;

__attribute__((used)) static void
do_cmp_and_jump (rtx arg1, rtx arg2, enum rtx_code op, enum machine_mode mode,
   rtx label)
{
  int unsignedp = (op == LTU || op == LEU || op == GTU || op == GEU);
  do_compare_rtx_and_jump (arg1, arg2, op, unsignedp, mode,
      NULL_RTX, NULL_RTX, label);
}
