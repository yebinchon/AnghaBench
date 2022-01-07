
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_COST ;

__attribute__((used)) static int
preferable (int cost_a, int regcost_a, int cost_b, int regcost_b)
{


  if (cost_a != cost_b)
    {
      if (cost_a == MAX_COST)
 return 1;
      if (cost_b == MAX_COST)
 return -1;
    }


  if (regcost_a != regcost_b)
    {
      if (regcost_a == MAX_COST)
 return 1;
      if (regcost_b == MAX_COST)
 return -1;
    }


  if (cost_a != cost_b)
    return cost_a - cost_b;

  if (regcost_a != regcost_b)
    return regcost_a - regcost_b;
  return 0;
}
