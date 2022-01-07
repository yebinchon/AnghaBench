
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cxx_pretty_printer ;
struct TYPE_2__ {int padding; } ;


 TYPE_1__* pp_base (int *) ;
 int pp_none ;
 int pp_separate_with (int *,int) ;

void
pp_cxx_separate_with (cxx_pretty_printer *pp, int c)
{
  pp_separate_with (pp, c);
  pp_base (pp)->padding = pp_none;
}
