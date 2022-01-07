
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct TYPE_4__ {struct expr* expr; struct symbol* sym; } ;
struct TYPE_3__ {struct symbol* sym; struct expr* expr; } ;
struct expr {int type; TYPE_2__ left; TYPE_1__ right; } ;
int expr_contains_symbol(struct expr *dep, struct symbol *sym)
{
 if (!dep)
  return 0;

 switch (dep->type) {
 case 133:
 case 130:
  return expr_contains_symbol(dep->left.expr, sym) ||
         expr_contains_symbol(dep->right.expr, sym);
 case 129:
  return dep->left.sym == sym;
 case 132:
 case 128:
  return dep->left.sym == sym ||
         dep->right.sym == sym;
 case 131:
  return expr_contains_symbol(dep->left.expr, sym);
 default:
  ;
 }
 return 0;
}
