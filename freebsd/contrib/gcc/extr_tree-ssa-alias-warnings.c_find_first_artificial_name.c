
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ffan_walker ;
 int walk_tree_without_duplicates (int *,int ,int *) ;

__attribute__((used)) static tree
find_first_artificial_name (tree expr)
{
  return walk_tree_without_duplicates (&expr, ffan_walker, ((void*)0));
}
