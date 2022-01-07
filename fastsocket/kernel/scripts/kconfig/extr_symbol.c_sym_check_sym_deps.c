
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int expr; } ;
struct symbol {struct property* prop; TYPE_2__ rev_dep; } ;
struct TYPE_3__ {int expr; } ;
struct property {scalar_t__ type; int expr; TYPE_1__ visible; struct property* next; } ;


 scalar_t__ P_CHOICE ;
 scalar_t__ P_DEFAULT ;
 scalar_t__ P_SELECT ;
 struct symbol* sym_check_expr_deps (int ) ;
 scalar_t__ sym_is_choice (struct symbol*) ;

__attribute__((used)) static struct symbol *sym_check_sym_deps(struct symbol *sym)
{
 struct symbol *sym2;
 struct property *prop;

 sym2 = sym_check_expr_deps(sym->rev_dep.expr);
 if (sym2)
  return sym2;

 for (prop = sym->prop; prop; prop = prop->next) {
  if (prop->type == P_CHOICE || prop->type == P_SELECT)
   continue;
  sym2 = sym_check_expr_deps(prop->visible.expr);
  if (sym2)
   break;
  if (prop->type != P_DEFAULT || sym_is_choice(sym))
   continue;
  sym2 = sym_check_expr_deps(prop->expr);
  if (sym2)
   break;
 }

 return sym2;
}
