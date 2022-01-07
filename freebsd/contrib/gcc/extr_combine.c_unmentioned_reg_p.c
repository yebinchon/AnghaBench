
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int for_each_rtx (int *,int ,int ) ;
 int unmentioned_reg_p_1 ;

__attribute__((used)) static bool
unmentioned_reg_p (rtx equiv, rtx expr)
{
  return for_each_rtx (&equiv, unmentioned_reg_p_1, expr);
}
