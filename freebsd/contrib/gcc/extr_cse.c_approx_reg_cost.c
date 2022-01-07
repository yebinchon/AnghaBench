
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int MAX_COST ;
 int approx_reg_cost_1 ;
 scalar_t__ for_each_rtx (int *,int ,void*) ;

__attribute__((used)) static int
approx_reg_cost (rtx x)
{
  int cost = 0;

  if (for_each_rtx (&x, approx_reg_cost_1, (void *) &cost))
    return MAX_COST;

  return cost;
}
