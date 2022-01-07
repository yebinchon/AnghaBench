
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 char const* N_ (char*) ;
 scalar_t__ RFmode ;
 scalar_t__ TYPE_MODE (int ) ;
 scalar_t__ VOIDmode ;

__attribute__((used)) static const char *
ia64_invalid_conversion (tree fromtype, tree totype)
{

  if (TYPE_MODE (fromtype) == RFmode
      && TYPE_MODE (totype) != RFmode
      && TYPE_MODE (totype) != VOIDmode)
    return N_("invalid conversion from %<__fpreg%>");
  if (TYPE_MODE (totype) == RFmode
      && TYPE_MODE (fromtype) != RFmode)
    return N_("invalid conversion to %<__fpreg%>");
  return ((void*)0);
}
