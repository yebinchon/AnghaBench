
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {int flags; char* name; TYPE_2__* prop; } ;
struct property {int dummy; } ;
struct TYPE_4__ {int lineno; TYPE_1__* file; } ;
struct TYPE_3__ {char* name; } ;


 int SYMBOL_CHECK ;
 int SYMBOL_CHECKED ;
 int fprintf (int ,char*,...) ;
 struct symbol* prop_get_symbol (struct property*) ;
 int stderr ;
 struct symbol* sym_check_choice_deps (struct symbol*) ;
 struct symbol* sym_check_sym_deps (struct symbol*) ;
 struct property* sym_get_choice_prop (struct symbol*) ;
 scalar_t__ sym_is_choice (struct symbol*) ;
 scalar_t__ sym_is_choice_value (struct symbol*) ;
 int zconfnerrs ;

struct symbol *sym_check_deps(struct symbol *sym)
{
 struct symbol *sym2;
 struct property *prop;

 if (sym->flags & SYMBOL_CHECK) {
  fprintf(stderr, "%s:%d:error: found recursive dependency: %s",
          sym->prop->file->name, sym->prop->lineno,
   sym->name ? sym->name : "<choice>");
  return sym;
 }
 if (sym->flags & SYMBOL_CHECKED)
  return ((void*)0);

 if (sym_is_choice_value(sym)) {

  prop = sym_get_choice_prop(sym);
  sym2 = sym_check_deps(prop_get_symbol(prop));
 } else if (sym_is_choice(sym)) {
  sym2 = sym_check_choice_deps(sym);
 } else {
  sym->flags |= (SYMBOL_CHECK | SYMBOL_CHECKED);
  sym2 = sym_check_sym_deps(sym);
  sym->flags &= ~SYMBOL_CHECK;
 }

 if (sym2) {
  fprintf(stderr, " -> %s", sym->name ? sym->name : "<choice>");
  if (sym2 == sym) {
   fprintf(stderr, "\n");
   zconfnerrs++;
   sym2 = ((void*)0);
  }
 }

 return sym2;
}
