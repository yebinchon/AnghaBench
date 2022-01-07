
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr {int dummy; } ;


 int E_OR ;
 struct expr* expr_eliminate_yn (struct expr*) ;
 int expr_extract_eq (int ,struct expr**,struct expr**,struct expr**) ;

struct expr *expr_extract_eq_or(struct expr **ep1, struct expr **ep2)
{
 struct expr *tmp = ((void*)0);
 expr_extract_eq(E_OR, &tmp, ep1, ep2);
 if (tmp) {
  *ep1 = expr_eliminate_yn(*ep1);
  *ep2 = expr_eliminate_yn(*ep2);
 }
 return tmp;
}
