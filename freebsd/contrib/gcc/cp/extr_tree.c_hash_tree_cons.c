
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct list_proxy {void* chain; void* value; void* purpose; } ;


 int INSERT ;
 void** htab_find_slot_with_hash (int ,struct list_proxy*,int,int ) ;
 int list_hash_pieces (void*,void*,void*) ;
 int list_hash_table ;
 void* tree_cons (void*,void*,void*) ;

tree
hash_tree_cons (tree purpose, tree value, tree chain)
{
  int hashcode = 0;
  void **slot;
  struct list_proxy proxy;


  hashcode = list_hash_pieces (purpose, value, chain);


  proxy.purpose = purpose;
  proxy.value = value;
  proxy.chain = chain;

  slot = htab_find_slot_with_hash (list_hash_table, &proxy, hashcode,
       INSERT);

  if (!*slot)
    *slot = tree_cons (purpose, value, chain);
  return (tree) *slot;
}
