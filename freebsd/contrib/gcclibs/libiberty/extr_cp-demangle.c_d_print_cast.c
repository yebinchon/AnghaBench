
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {scalar_t__ type; } ;
struct d_print_template {struct d_print_template* next; struct demangle_component const* template_decl; } ;
struct d_print_mod {int dummy; } ;
struct d_print_info {struct d_print_mod* modifiers; struct d_print_template* templates; } ;


 scalar_t__ DEMANGLE_COMPONENT_TEMPLATE ;
 int d_append_char (struct d_print_info*,char) ;
 char d_last_char (struct d_print_info*) ;
 struct demangle_component const* d_left (struct demangle_component const*) ;
 int d_print_comp (struct d_print_info*,struct demangle_component const*) ;
 struct demangle_component const* d_right (struct demangle_component const*) ;

__attribute__((used)) static void
d_print_cast (struct d_print_info *dpi,
              const struct demangle_component *dc)
{
  if (d_left (dc)->type != DEMANGLE_COMPONENT_TEMPLATE)
    d_print_comp (dpi, d_left (dc));
  else
    {
      struct d_print_mod *hold_dpm;
      struct d_print_template dpt;






      hold_dpm = dpi->modifiers;
      dpi->modifiers = ((void*)0);

      dpt.next = dpi->templates;
      dpi->templates = &dpt;
      dpt.template_decl = d_left (dc);

      d_print_comp (dpi, d_left (d_left (dc)));

      dpi->templates = dpt.next;

      if (d_last_char (dpi) == '<')
 d_append_char (dpi, ' ');
      d_append_char (dpi, '<');
      d_print_comp (dpi, d_right (d_left (dc)));


      if (d_last_char (dpi) == '>')
 d_append_char (dpi, ' ');
      d_append_char (dpi, '>');

      dpi->modifiers = hold_dpm;
    }
}
