
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pretty_printer ;
struct TYPE_2__ {scalar_t__ padding; } ;


 TYPE_1__* pp_base (int *) ;
 scalar_t__ pp_none ;
 int pp_space (int *) ;

void
pp_base_maybe_space (pretty_printer *pp)
{
  if (pp_base (pp)->padding != pp_none)
    {
      pp_space (pp);
      pp_base (pp)->padding = pp_none;
    }
}
