
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {int type; TYPE_2__ right; TYPE_1__ left; } ;
typedef enum expr_type { ____Placeholder_expr_type } expr_type ;


 int E_AND ;
 int E_OR ;
 struct expr* e1 ;
 struct expr* e2 ;
 void* expr_alloc_symbol (int *) ;
 struct expr* expr_alloc_two (int,struct expr*,struct expr*) ;
 scalar_t__ expr_eq (struct expr*,struct expr*) ;
 int expr_free (struct expr*) ;
 int symbol_no ;
 int symbol_yes ;

void expr_extract_eq(enum expr_type type, struct expr **ep, struct expr **ep1, struct expr **ep2)
{


 if ((*ep1)->type == type) {
  expr_extract_eq(type, ep, &(*ep1)->left.expr, &(*ep2));
  expr_extract_eq(type, ep, &(*ep1)->right.expr, &(*ep2));
  return;
 }
 if ((*ep2)->type == type) {
  expr_extract_eq(type, ep, ep1, &(*ep2)->left.expr);
  expr_extract_eq(type, ep, ep1, &(*ep2)->right.expr);
  return;
 }
 if (expr_eq((*ep1), (*ep2))) {
  *ep = *ep ? expr_alloc_two(type, *ep, (*ep1)) : (*ep1);
  expr_free((*ep2));
  if (type == E_AND) {
   (*ep1) = expr_alloc_symbol(&symbol_yes);
   (*ep2) = expr_alloc_symbol(&symbol_yes);
  } else if (type == E_OR) {
   (*ep1) = expr_alloc_symbol(&symbol_no);
   (*ep2) = expr_alloc_symbol(&symbol_no);
  }
 }


}
