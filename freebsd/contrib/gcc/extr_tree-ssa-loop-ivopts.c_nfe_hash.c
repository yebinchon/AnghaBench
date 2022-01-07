
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_cache_elt {int exit; } ;
typedef int hashval_t ;


 int htab_hash_pointer (int ) ;

__attribute__((used)) static hashval_t
nfe_hash (const void *e)
{
  const struct nfe_cache_elt *elt = e;

  return htab_hash_pointer (elt->exit);
}
