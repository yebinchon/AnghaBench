
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int name; int export; struct module* module; struct symbol* next; } ;
struct module {char* name; int gpl_compatible; struct symbol* unres; } ;


 int check_for_gpl_usage (int ,char const*,int ) ;
 int check_for_unused (int ,char const*,int ) ;
 struct symbol* find_symbol (int ) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void check_exports(struct module *mod)
{
 struct symbol *s, *exp;

 for (s = mod->unres; s; s = s->next) {
  const char *basename;
  exp = find_symbol(s->name);
  if (!exp || exp->module == mod)
   continue;
  basename = strrchr(mod->name, '/');
  if (basename)
   basename++;
  else
   basename = mod->name;
  if (!mod->gpl_compatible)
   check_for_gpl_usage(exp->export, basename, exp->name);
  check_for_unused(exp->export, basename, exp->name);
 }
}
