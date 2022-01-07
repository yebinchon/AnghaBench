
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct expr* expr; } ;
struct TYPE_3__ {int * sym; struct expr* expr; } ;
struct expr {int type; TYPE_2__ right; TYPE_1__ left; } ;




 void* E_SYMBOL ;
 int expr_free (struct expr*) ;
 int free (struct expr*) ;
 int symbol_no ;
 int symbol_yes ;

struct expr *expr_eliminate_yn(struct expr *e)
{
 struct expr *tmp;

 if (e) switch (e->type) {
 case 129:
  e->left.expr = expr_eliminate_yn(e->left.expr);
  e->right.expr = expr_eliminate_yn(e->right.expr);
  if (e->left.expr->type == E_SYMBOL) {
   if (e->left.expr->left.sym == &symbol_no) {
    expr_free(e->left.expr);
    expr_free(e->right.expr);
    e->type = E_SYMBOL;
    e->left.sym = &symbol_no;
    e->right.expr = ((void*)0);
    return e;
   } else if (e->left.expr->left.sym == &symbol_yes) {
    free(e->left.expr);
    tmp = e->right.expr;
    *e = *(e->right.expr);
    free(tmp);
    return e;
   }
  }
  if (e->right.expr->type == E_SYMBOL) {
   if (e->right.expr->left.sym == &symbol_no) {
    expr_free(e->left.expr);
    expr_free(e->right.expr);
    e->type = E_SYMBOL;
    e->left.sym = &symbol_no;
    e->right.expr = ((void*)0);
    return e;
   } else if (e->right.expr->left.sym == &symbol_yes) {
    free(e->right.expr);
    tmp = e->left.expr;
    *e = *(e->left.expr);
    free(tmp);
    return e;
   }
  }
  break;
 case 128:
  e->left.expr = expr_eliminate_yn(e->left.expr);
  e->right.expr = expr_eliminate_yn(e->right.expr);
  if (e->left.expr->type == E_SYMBOL) {
   if (e->left.expr->left.sym == &symbol_no) {
    free(e->left.expr);
    tmp = e->right.expr;
    *e = *(e->right.expr);
    free(tmp);
    return e;
   } else if (e->left.expr->left.sym == &symbol_yes) {
    expr_free(e->left.expr);
    expr_free(e->right.expr);
    e->type = E_SYMBOL;
    e->left.sym = &symbol_yes;
    e->right.expr = ((void*)0);
    return e;
   }
  }
  if (e->right.expr->type == E_SYMBOL) {
   if (e->right.expr->left.sym == &symbol_no) {
    free(e->right.expr);
    tmp = e->left.expr;
    *e = *(e->left.expr);
    free(tmp);
    return e;
   } else if (e->right.expr->left.sym == &symbol_yes) {
    expr_free(e->left.expr);
    expr_free(e->right.expr);
    e->type = E_SYMBOL;
    e->left.sym = &symbol_yes;
    e->right.expr = ((void*)0);
    return e;
   }
  }
  break;
 default:
  ;
 }
 return e;
}
