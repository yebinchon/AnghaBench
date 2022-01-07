
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var_map_elt {int old; } ;
typedef int hashval_t ;


 int htab_hash_pointer (int ) ;

__attribute__((used)) static hashval_t
var_map_hash (const void *x)
{
  const struct var_map_elt *a = (const struct var_map_elt *) x;
  return htab_hash_pointer (a->old);
}
