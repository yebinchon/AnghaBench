
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int EQ ;
 int NULL_RTX ;
 int do_compare_rtx_and_jump (int ,int ,int ,int,int,int ,int ,int ) ;

__attribute__((used)) static void
do_jump_if_equal (enum machine_mode mode, rtx op0, rtx op1, rtx label,
    int unsignedp)
{
  do_compare_rtx_and_jump (op0, op1, EQ, unsignedp, mode,
      NULL_RTX, NULL_RTX, label);
}
