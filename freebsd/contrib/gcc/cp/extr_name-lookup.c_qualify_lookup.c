
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int LOOKUP_PREFER_NAMESPACES ;
 int LOOKUP_PREFER_TYPES ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;

__attribute__((used)) static bool
qualify_lookup (tree val, int flags)
{
  if (val == NULL_TREE)
    return 0;
  if ((flags & LOOKUP_PREFER_NAMESPACES) && TREE_CODE (val) == NAMESPACE_DECL)
    return 1;
  if ((flags & LOOKUP_PREFER_TYPES)
      && (TREE_CODE (val) == TYPE_DECL || TREE_CODE (val) == TEMPLATE_DECL))
    return 1;
  if (flags & (LOOKUP_PREFER_NAMESPACES | LOOKUP_PREFER_TYPES))
    return 0;
  return 1;
}
