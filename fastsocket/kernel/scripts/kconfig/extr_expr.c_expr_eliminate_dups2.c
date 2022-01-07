
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



 int E_NOT ;

 struct expr* e1 ;
 struct expr* e2 ;
 int expr_alloc_one (int ,struct expr*) ;
 struct expr* expr_alloc_symbol (int *) ;
 struct expr* expr_copy (struct expr*) ;
 struct expr* expr_extract_eq_and (struct expr**,struct expr**) ;
 struct expr* expr_extract_eq_or (struct expr**,struct expr**) ;
 int expr_free (struct expr*) ;
 int expr_is_no (struct expr*) ;
 int expr_is_yes (struct expr*) ;
 struct expr* expr_transform (int ) ;
 int symbol_no ;
 int symbol_yes ;
 int trans_count ;

__attribute__((used)) static void expr_eliminate_dups2(enum expr_type type, struct expr **ep1, struct expr **ep2)
{


 struct expr *tmp, *tmp1, *tmp2;

 if ((*ep1)->type == type) {
  expr_eliminate_dups2(type, &(*ep1)->left.expr, &(*ep2));
  expr_eliminate_dups2(type, &(*ep1)->right.expr, &(*ep2));
  return;
 }
 if ((*ep2)->type == type) {
  expr_eliminate_dups2(type, &(*ep1), &(*ep2)->left.expr);
  expr_eliminate_dups2(type, &(*ep1), &(*ep2)->right.expr);
 }
 if ((*ep1) == (*ep2))
  return;

 switch ((*ep1)->type) {
 case 128:
  expr_eliminate_dups2((*ep1)->type, &(*ep1), &(*ep1));

  tmp1 = expr_transform(expr_alloc_one(E_NOT, expr_copy((*ep1))));
  tmp2 = expr_copy((*ep2));
  tmp = expr_extract_eq_and(&tmp1, &tmp2);
  if (expr_is_yes(tmp1)) {
   expr_free((*ep1));
   (*ep1) = expr_alloc_symbol(&symbol_no);
   trans_count++;
  }
  expr_free(tmp2);
  expr_free(tmp1);
  expr_free(tmp);
  break;
 case 129:
  expr_eliminate_dups2((*ep1)->type, &(*ep1), &(*ep1));

  tmp1 = expr_transform(expr_alloc_one(E_NOT, expr_copy((*ep1))));
  tmp2 = expr_copy((*ep2));
  tmp = expr_extract_eq_or(&tmp1, &tmp2);
  if (expr_is_no(tmp1)) {
   expr_free((*ep1));
   (*ep1) = expr_alloc_symbol(&symbol_yes);
   trans_count++;
  }
  expr_free(tmp2);
  expr_free(tmp1);
  expr_free(tmp);
  break;
 default:
  ;
 }


}
