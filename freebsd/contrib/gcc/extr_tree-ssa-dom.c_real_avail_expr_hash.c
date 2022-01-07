
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr_hash_elt {int hash; } ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
real_avail_expr_hash (const void *p)
{
  return ((const struct expr_hash_elt *)p)->hash;
}
