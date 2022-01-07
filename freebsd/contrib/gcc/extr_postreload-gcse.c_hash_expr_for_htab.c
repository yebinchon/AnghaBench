
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr {int hash; } ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
hash_expr_for_htab (const void *expp)
{
  struct expr *exp = (struct expr *) expp;
  return exp->hash;
}
