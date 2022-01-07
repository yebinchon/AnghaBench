
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int hashval_t ;


 int TREE_INT_CST_HIGH (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_TYPE (int ) ;
 int htab_hash_pointer (int ) ;

__attribute__((used)) static hashval_t
int_cst_hash_hash (const void *x)
{
  tree t = (tree) x;

  return (TREE_INT_CST_HIGH (t) ^ TREE_INT_CST_LOW (t)
   ^ htab_hash_pointer (TREE_TYPE (t)));
}
