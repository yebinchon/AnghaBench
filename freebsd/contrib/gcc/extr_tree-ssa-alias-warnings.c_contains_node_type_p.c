
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ NULL_TREE ;
 int contains_node_type_p_callback ;
 scalar_t__ walk_tree_without_duplicates (int *,int ,void*) ;

__attribute__((used)) static bool
contains_node_type_p (tree t, int type)
{
  return (walk_tree_without_duplicates (&t, contains_node_type_p_callback,
     (void *) &type)
   != NULL_TREE);
}
