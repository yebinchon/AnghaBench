
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int convert (int ,int ) ;

__attribute__((used)) static tree
sync_resolve_return (tree params, tree result)
{
  tree ptype = TREE_TYPE (TREE_TYPE (TREE_VALUE (params)));
  ptype = TYPE_MAIN_VARIANT (ptype);
  return convert (ptype, result);
}
