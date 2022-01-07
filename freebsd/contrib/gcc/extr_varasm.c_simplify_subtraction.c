
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ simplify_rtx (scalar_t__) ;

rtx
simplify_subtraction (rtx x)
{
  rtx r = simplify_rtx (x);
  return r ? r : x;
}
