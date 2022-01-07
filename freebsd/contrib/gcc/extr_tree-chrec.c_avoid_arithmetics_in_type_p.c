
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ INTEGER_TYPE ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_TYPE (int ) ;

__attribute__((used)) static bool
avoid_arithmetics_in_type_p (tree type)
{



  if (TREE_CODE (type) == INTEGER_TYPE && TREE_TYPE (type) != NULL_TREE)
    return 1;

  return 0;
}
