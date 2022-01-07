
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ optimize_size ;

int
coalesce_cost (int frequency, bool hot, bool critical)
{

  int cost = frequency;

  if (!cost)
    cost = 1;
  if (optimize_size || hot)
    cost = 1;


  if (critical)
    cost *= 2;
  return cost;
}
