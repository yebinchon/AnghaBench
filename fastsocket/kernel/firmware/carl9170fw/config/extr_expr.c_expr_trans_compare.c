
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct TYPE_4__ {int sym; struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {int type; TYPE_2__ left; TYPE_1__ right; } ;
typedef enum expr_type { ____Placeholder_expr_type } expr_type ;
 struct expr* expr_alloc_comp (int,int ,struct symbol*) ;
 struct expr* expr_alloc_one (int const,struct expr*) ;
 struct expr* expr_alloc_symbol (struct symbol*) ;
 struct expr* expr_alloc_two (int const,struct expr*,struct expr*) ;
 struct expr* expr_copy (struct expr*) ;
 struct symbol symbol_mod ;
 struct symbol symbol_no ;
 struct symbol symbol_yes ;

struct expr *expr_trans_compare(struct expr *e, enum expr_type type, struct symbol *sym)
{
 struct expr *e1, *e2;

 if (!e) {
  e = expr_alloc_symbol(sym);
  if (type == 128)
   e = expr_alloc_one(132, e);
  return e;
 }
 switch (e->type) {
 case 136:
  e1 = expr_trans_compare(e->left.expr, 135, sym);
  e2 = expr_trans_compare(e->right.expr, 135, sym);
  if (sym == &symbol_yes)
   e = expr_alloc_two(136, e1, e2);
  if (sym == &symbol_no)
   e = expr_alloc_two(131, e1, e2);
  if (type == 128)
   e = expr_alloc_one(132, e);
  return e;
 case 131:
  e1 = expr_trans_compare(e->left.expr, 135, sym);
  e2 = expr_trans_compare(e->right.expr, 135, sym);
  if (sym == &symbol_yes)
   e = expr_alloc_two(131, e1, e2);
  if (sym == &symbol_no)
   e = expr_alloc_two(136, e1, e2);
  if (type == 128)
   e = expr_alloc_one(132, e);
  return e;
 case 132:
  return expr_trans_compare(e->left.expr, type == 135 ? 128 : 135, sym);
 case 128:
 case 135:
  if (type == 135) {
   if (sym == &symbol_yes)
    return expr_copy(e);
   if (sym == &symbol_mod)
    return expr_alloc_symbol(&symbol_no);
   if (sym == &symbol_no)
    return expr_alloc_one(132, expr_copy(e));
  } else {
   if (sym == &symbol_yes)
    return expr_alloc_one(132, expr_copy(e));
   if (sym == &symbol_mod)
    return expr_alloc_symbol(&symbol_yes);
   if (sym == &symbol_no)
    return expr_copy(e);
  }
  break;
 case 129:
  return expr_alloc_comp(type, e->left.sym, sym);
 case 134:
 case 130:
 case 133:
             ;
 }
 return ((void*)0);
}
