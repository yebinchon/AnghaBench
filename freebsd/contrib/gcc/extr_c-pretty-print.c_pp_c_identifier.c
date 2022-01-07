
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int c_pretty_printer ;
struct TYPE_2__ {int padding; } ;


 TYPE_1__* pp_base (int *) ;
 int pp_before ;
 int pp_c_maybe_whitespace (int *) ;
 int pp_identifier (int *,char const*) ;

void
pp_c_identifier (c_pretty_printer *pp, const char *id)
{
  pp_c_maybe_whitespace (pp);
  pp_identifier (pp, id);
  pp_base (pp)->padding = pp_before;
}
