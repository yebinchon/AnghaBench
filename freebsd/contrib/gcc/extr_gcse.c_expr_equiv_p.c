
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int exp_equiv_p (int ,int ,int ,int) ;

__attribute__((used)) static int
expr_equiv_p (rtx x, rtx y)
{
  return exp_equiv_p (x, y, 0, 1);
}
