
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int gcc_assert (int) ;
 scalar_t__ pending_sizes ;

void
put_pending_sizes (tree chain)
{
  gcc_assert (!pending_sizes);
  pending_sizes = chain;
}
