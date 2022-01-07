
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int type; } ;
struct d_print_info {int options; } ;
 int DMGL_JAVA ;
 int d_append_char (struct d_print_info*,char) ;
 int d_append_string (struct d_print_info*,char*) ;
 char d_last_char (struct d_print_info*) ;
 struct demangle_component const* d_left (struct demangle_component const*) ;
 int d_print_comp (struct d_print_info*,struct demangle_component const*) ;
 struct demangle_component const* d_right (struct demangle_component const*) ;

__attribute__((used)) static void
d_print_mod (struct d_print_info *dpi,
             const struct demangle_component *mod)
{
  switch (mod->type)
    {
    case 133:
    case 132:
      d_append_string (dpi, " restrict");
      return;
    case 129:
    case 128:
      d_append_string (dpi, " volatile");
      return;
    case 139:
    case 138:
      d_append_string (dpi, " const");
      return;
    case 130:
      d_append_char (dpi, ' ');
      d_print_comp (dpi, d_right (mod));
      return;
    case 136:

      if ((dpi->options & DMGL_JAVA) == 0)
 d_append_char (dpi, '*');
      return;
    case 134:
      d_append_char (dpi, '&');
      return;
    case 140:
      d_append_string (dpi, "complex ");
      return;
    case 137:
      d_append_string (dpi, "imaginary ");
      return;
    case 135:
      if (d_last_char (dpi) != '(')
 d_append_char (dpi, ' ');
      d_print_comp (dpi, d_left (mod));
      d_append_string (dpi, "::*");
      return;
    case 131:
      d_print_comp (dpi, d_left (mod));
      return;
    default:


      d_print_comp (dpi, mod);
      return;
    }
}
