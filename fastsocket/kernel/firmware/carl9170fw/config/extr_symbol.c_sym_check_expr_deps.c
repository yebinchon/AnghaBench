
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct TYPE_4__ {int sym; struct expr* expr; } ;
struct TYPE_3__ {int sym; struct expr* expr; } ;
struct expr {int type; TYPE_2__ left; TYPE_1__ right; } ;
 int printf (char*,int) ;
 struct symbol* sym_check_deps (int ) ;

__attribute__((used)) static struct symbol *sym_check_expr_deps(struct expr *e)
{
 struct symbol *sym;

 if (!e)
  return ((void*)0);
 switch (e->type) {
 case 130:
 case 133:
  sym = sym_check_expr_deps(e->left.expr);
  if (sym)
   return sym;
  return sym_check_expr_deps(e->right.expr);
 case 131:
  return sym_check_expr_deps(e->left.expr);
 case 132:
 case 128:
  sym = sym_check_deps(e->left.sym);
  if (sym)
   return sym;
  return sym_check_deps(e->right.sym);
 case 129:
  return sym_check_deps(e->left.sym);
 default:
  break;
 }
 printf("Oops! How to check %d?\n", e->type);
 return ((void*)0);
}
