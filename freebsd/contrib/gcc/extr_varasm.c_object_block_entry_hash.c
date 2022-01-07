
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_block {int sect; } ;
typedef int hashval_t ;


 int hash_section (int ) ;

__attribute__((used)) static hashval_t
object_block_entry_hash (const void *p)
{
  const struct object_block *old = p;
  return hash_section (old->sect);
}
