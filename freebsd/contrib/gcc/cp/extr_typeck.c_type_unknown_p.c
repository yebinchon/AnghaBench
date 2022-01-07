
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_LIST ;
 scalar_t__ TREE_TYPE (int ) ;
 scalar_t__ unknown_type_node ;

int
type_unknown_p (tree exp)
{
  return (TREE_CODE (exp) == TREE_LIST
   || TREE_TYPE (exp) == unknown_type_node);
}
