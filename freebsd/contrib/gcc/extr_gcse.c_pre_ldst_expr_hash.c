
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_expr {int pattern; } ;
typedef int hashval_t ;


 int GET_MODE (int ) ;
 int hash_rtx (int ,int ,int*,int *,int) ;

__attribute__((used)) static hashval_t
pre_ldst_expr_hash (const void *p)
{
  int do_not_record_p = 0;
  const struct ls_expr *x = p;
  return hash_rtx (x->pattern, GET_MODE (x->pattern), &do_not_record_p, ((void*)0), 0);
}
