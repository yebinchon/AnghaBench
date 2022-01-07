
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 scalar_t__ void_type_node ;

__attribute__((used)) static int
deserves_ellipsis (tree fntype)
{
  tree formal_type;

  formal_type = TYPE_ARG_TYPES (fntype);
  while (formal_type && TREE_VALUE (formal_type) != void_type_node)
    formal_type = TREE_CHAIN (formal_type);





  return (!formal_type && TYPE_ARG_TYPES (fntype));
}
