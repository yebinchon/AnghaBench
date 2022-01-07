
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct type_hash {int type; int hash; } ;
typedef int hashval_t ;


 int INSERT ;
 struct type_hash* ggc_alloc (int) ;
 void** htab_find_slot_with_hash (int ,struct type_hash*,int ,int ) ;
 int type_hash_table ;

void
type_hash_add (hashval_t hashcode, tree type)
{
  struct type_hash *h;
  void **loc;

  h = ggc_alloc (sizeof (struct type_hash));
  h->hash = hashcode;
  h->type = type;
  loc = htab_find_slot_with_hash (type_hash_table, h, hashcode, INSERT);
  *(struct type_hash **) loc = h;
}
