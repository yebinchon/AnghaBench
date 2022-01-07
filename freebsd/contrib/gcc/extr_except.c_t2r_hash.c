
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int hashval_t ;


 int TREE_HASH (int ) ;
 int TREE_PURPOSE (int ) ;

__attribute__((used)) static hashval_t
t2r_hash (const void *pentry)
{
  tree entry = (tree) pentry;
  return TREE_HASH (TREE_PURPOSE (entry));
}
