
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangler_engine {scalar_t__ demangling_style; } ;
typedef enum demangling_styles { ____Placeholder_demangling_styles } demangling_styles ;


 int current_demangling_style ;
 struct demangler_engine* libiberty_demanglers ;
 scalar_t__ unknown_demangling ;

enum demangling_styles
cplus_demangle_set_style (enum demangling_styles style)
{
  const struct demangler_engine *demangler = libiberty_demanglers;

  for (; demangler->demangling_style != unknown_demangling; ++demangler)
    if (style == demangler->demangling_style)
      {
 current_demangling_style = style;
 return current_demangling_style;
      }

  return unknown_demangling;
}
