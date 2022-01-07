
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tristate ;
struct symbol {char* name; } ;
struct menu {TYPE_1__* prompt; struct symbol* sym; } ;
struct TYPE_2__ {int text; } ;


 int _ (int ) ;
 int conf_askvalue (struct symbol*,int ) ;
 char* indent ;
 int* line ;
 scalar_t__ menu_has_help (struct menu*) ;


 int print_help (struct menu*) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int strcmp (int*,char*) ;
 int strip (int*) ;
 int sym_get_string_value (struct symbol*) ;
 int sym_get_tristate_value (struct symbol*) ;
 scalar_t__ sym_set_tristate_value (struct symbol*,int) ;
 scalar_t__ sym_tristate_within_range (struct symbol*,int const) ;


__attribute__((used)) static int conf_sym(struct menu *menu)
{
 struct symbol *sym = menu->sym;
 tristate oldval, newval;

 while (1) {
  printf("%*s%s ", indent - 1, "", _(menu->prompt->text));
  if (sym->name)
   printf("(%s) ", sym->name);
  putchar('[');
  oldval = sym_get_tristate_value(sym);
  switch (oldval) {
  case 129:
   putchar('N');
   break;
  case 130:
   putchar('M');
   break;
  case 128:
   putchar('Y');
   break;
  }
  if (oldval != 129 && sym_tristate_within_range(sym, 129))
   printf("/n");
  if (oldval != 130 && sym_tristate_within_range(sym, 130))
   printf("/m");
  if (oldval != 128 && sym_tristate_within_range(sym, 128))
   printf("/y");
  if (menu_has_help(menu))
   printf("/?");
  printf("] ");
  if (!conf_askvalue(sym, sym_get_string_value(sym)))
   return 0;
  strip(line);

  switch (line[0]) {
  case 'n':
  case 'N':
   newval = 129;
   if (!line[1] || !strcmp(&line[1], "o"))
    break;
   continue;
  case 'm':
  case 'M':
   newval = 130;
   if (!line[1])
    break;
   continue;
  case 'y':
  case 'Y':
   newval = 128;
   if (!line[1] || !strcmp(&line[1], "es"))
    break;
   continue;
  case 0:
   newval = oldval;
   break;
  case '?':
   goto help;
  default:
   continue;
  }
  if (sym_set_tristate_value(sym, newval))
   return 0;
help:
  print_help(menu);
 }
}
