
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hash_traverse (int ,int ) ;
 int local_hash ;
 int resolve_local_symbol ;

void
resolve_local_symbol_values (void)
{
  hash_traverse (local_hash, resolve_local_symbol);
}
