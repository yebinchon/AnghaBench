
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int maximum_length; scalar_t__ prefix; } ;
typedef TYPE_1__ pretty_printer ;


 scalar_t__ DIAGNOSTICS_SHOW_PREFIX_NEVER ;
 scalar_t__ DIAGNOSTICS_SHOW_PREFIX_ONCE ;
 int pp_is_wrapping_line (TYPE_1__*) ;
 int pp_line_cutoff (TYPE_1__*) ;
 scalar_t__ pp_prefixing_rule (TYPE_1__*) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void
pp_set_real_maximum_length (pretty_printer *pp)
{



  if (!pp_is_wrapping_line (pp)
      || pp_prefixing_rule (pp) == DIAGNOSTICS_SHOW_PREFIX_ONCE
      || pp_prefixing_rule (pp) == DIAGNOSTICS_SHOW_PREFIX_NEVER)
    pp->maximum_length = pp_line_cutoff (pp);
  else
    {
      int prefix_length = pp->prefix ? strlen (pp->prefix) : 0;


      if (pp_line_cutoff (pp) - prefix_length < 32)
 pp->maximum_length = pp_line_cutoff (pp) + 32;
      else
 pp->maximum_length = pp_line_cutoff (pp);
    }
}
