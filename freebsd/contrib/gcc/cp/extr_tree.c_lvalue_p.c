
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ clk_none ;
 scalar_t__ lvalue_p_1 (int ,int) ;

int
lvalue_p (tree ref)
{
  return
    (lvalue_p_1 (ref, 1) != clk_none);
}
