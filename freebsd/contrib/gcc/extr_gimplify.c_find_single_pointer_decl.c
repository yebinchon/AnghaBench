
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int find_single_pointer_decl_1 ;
 scalar_t__ walk_tree (int *,int ,int *,int *) ;

__attribute__((used)) static tree
find_single_pointer_decl (tree t)
{
  tree decl = NULL_TREE;

  if (walk_tree (&t, find_single_pointer_decl_1, &decl, ((void*)0)))
    {



      return NULL_TREE;
    }

  return decl;
}
