
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;



 int BASELINK_FUNCTIONS (int ) ;
 int NULL_TREE ;
 int TREE_CODE (int ) ;
 int staticp (int ) ;

tree
cxx_staticp (tree arg)
{
  switch (TREE_CODE (arg))
    {
    case 128:
      return staticp (BASELINK_FUNCTIONS (arg));

    default:
      break;
    }

  return NULL_TREE;
}
