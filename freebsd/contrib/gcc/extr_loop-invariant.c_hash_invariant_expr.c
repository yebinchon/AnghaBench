
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct invariant_expr_entry {int hash; } ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
hash_invariant_expr (const void *e)
{
  const struct invariant_expr_entry *entry = e;

  return entry->hash;
}
