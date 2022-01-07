
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct type_hash {int type; int hash; } ;
typedef int hashval_t ;


 int NULL_TREE ;
 struct type_hash* htab_find_with_hash (int ,struct type_hash*,int ) ;
 int layout_type (int ) ;
 int type_hash_table ;

tree
type_hash_lookup (hashval_t hashcode, tree type)
{
  struct type_hash *h, in;



  layout_type (type);

  in.hash = hashcode;
  in.type = type;

  h = htab_find_with_hash (type_hash_table, &in, hashcode);
  if (h)
    return h->type;
  return NULL_TREE;
}
