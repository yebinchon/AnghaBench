
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int c_pretty_printer ;
struct TYPE_2__ {int padding; } ;


 TYPE_1__* pp_base (int *) ;
 int pp_left_brace (int *) ;
 int pp_none ;

void
pp_c_left_brace (c_pretty_printer *pp)
{
  pp_left_brace (pp);
  pp_base (pp)->padding = pp_none;
}
