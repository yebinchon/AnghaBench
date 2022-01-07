
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct def_blocks_d {scalar_t__ var; } ;
typedef int hashval_t ;


 int htab_hash_pointer (void const*) ;

__attribute__((used)) static hashval_t
def_blocks_hash (const void *p)
{
  return htab_hash_pointer
 ((const void *)((const struct def_blocks_d *)p)->var);
}
