
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ pending_sizes ;

tree
get_pending_sizes (void)
{
  tree chain = pending_sizes;

  pending_sizes = 0;
  return chain;
}
