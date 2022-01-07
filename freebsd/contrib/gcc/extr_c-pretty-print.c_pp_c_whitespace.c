
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int c_pretty_printer ;
struct TYPE_2__ {int padding; } ;


 TYPE_1__* pp_base (int *) ;
 int pp_none ;
 int pp_space (int *) ;

void
pp_c_whitespace (c_pretty_printer *pp)
{
  pp_space (pp);
  pp_base (pp)->padding = pp_none;
}
