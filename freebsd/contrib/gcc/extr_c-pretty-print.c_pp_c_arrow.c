
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int c_pretty_printer ;
struct TYPE_2__ {int padding; } ;


 int pp_arrow (int *) ;
 TYPE_1__* pp_base (int *) ;
 int pp_none ;

void
pp_c_arrow (c_pretty_printer *pp)
{
  pp_arrow (pp);
  pp_base (pp)->padding = pp_none;
}
