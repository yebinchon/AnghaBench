
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int hashval_t ;


 int TREE_CHAIN (int ) ;
 int TREE_PURPOSE (int ) ;
 int TREE_VALUE (int ) ;
 int list_hash_pieces (int ,int ,int ) ;

__attribute__((used)) static hashval_t
list_hash (const void* p)
{
  tree t = (tree) p;
  return list_hash_pieces (TREE_PURPOSE (t),
      TREE_VALUE (t),
      TREE_CHAIN (t));
}
