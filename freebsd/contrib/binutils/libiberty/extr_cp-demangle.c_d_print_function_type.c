
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demangle_component {int dummy; } ;
struct d_print_mod {TYPE_1__* mod; scalar_t__ printed; struct d_print_mod* next; } ;
struct d_print_info {struct d_print_mod* modifiers; } ;
struct TYPE_2__ {int type; } ;
 int d_append_char (struct d_print_info*,char) ;
 char d_last_char (struct d_print_info*) ;
 int * d_left (struct demangle_component const*) ;
 int d_print_comp (struct d_print_info*,int *) ;
 int d_print_mod_list (struct d_print_info*,struct d_print_mod*,int) ;
 int * d_right (struct demangle_component const*) ;

__attribute__((used)) static void
d_print_function_type (struct d_print_info *dpi,
                       const struct demangle_component *dc,
                       struct d_print_mod *mods)
{
  int need_paren;
  int saw_mod;
  int need_space;
  struct d_print_mod *p;
  struct d_print_mod *hold_modifiers;

  need_paren = 0;
  saw_mod = 0;
  need_space = 0;
  for (p = mods; p != ((void*)0); p = p->next)
    {
      if (p->printed)
 break;

      saw_mod = 1;
      switch (p->mod->type)
 {
 case 135:
 case 133:
   need_paren = 1;
   break;
 case 132:
 case 129:
 case 138:
 case 130:
 case 139:
 case 136:
 case 134:
   need_space = 1;
   need_paren = 1;
   break;
 case 131:
 case 128:
 case 137:
   break;
 default:
   break;
 }
      if (need_paren)
 break;
    }

  if (d_left (dc) != ((void*)0) && ! saw_mod)
    need_paren = 1;

  if (need_paren)
    {
      if (! need_space)
 {
   if (d_last_char (dpi) != '('
       && d_last_char (dpi) != '*')
     need_space = 1;
 }
      if (need_space && d_last_char (dpi) != ' ')
 d_append_char (dpi, ' ');
      d_append_char (dpi, '(');
    }

  hold_modifiers = dpi->modifiers;
  dpi->modifiers = ((void*)0);

  d_print_mod_list (dpi, mods, 0);

  if (need_paren)
    d_append_char (dpi, ')');

  d_append_char (dpi, '(');

  if (d_right (dc) != ((void*)0))
    d_print_comp (dpi, d_right (dc));

  d_append_char (dpi, ')');

  d_print_mod_list (dpi, mods, 1);

  dpi->modifiers = hold_modifiers;
}
