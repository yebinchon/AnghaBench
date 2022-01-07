
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_key {int table; scalar_t__ name; } ;


 int macro_bcache_free (int ,char*) ;
 int macro_free (struct macro_key*,int ) ;

__attribute__((used)) static void
macro_tree_delete_key (void *untyped_key)
{
  struct macro_key *key = (struct macro_key *) untyped_key;

  macro_bcache_free (key->table, (char *) key->name);
  macro_free (key, key->table);
}
