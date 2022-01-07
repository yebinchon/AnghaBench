
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int for_each_rtx (int *,int ,int ) ;
 int rtx_referenced_p_1 ;

int
rtx_referenced_p (rtx x, rtx body)
{
  return for_each_rtx (&body, rtx_referenced_p_1, x);
}
