
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alias_hash ;
 int do_alias ;
 int hash_traverse (int ,int ) ;

void
ia64_adjust_symtab (void)
{
  hash_traverse (alias_hash, do_alias);
}
