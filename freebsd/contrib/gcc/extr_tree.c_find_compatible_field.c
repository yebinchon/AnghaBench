
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ FIELD_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ TYPE_VFIELD (scalar_t__) ;
 scalar_t__ fields_compatible_p (scalar_t__,scalar_t__) ;

tree
find_compatible_field (tree record, tree orig_field)
{
  tree f;

  for (f = TYPE_FIELDS (record); f ; f = TREE_CHAIN (f))
    if (TREE_CODE (f) == FIELD_DECL
 && fields_compatible_p (f, orig_field))
      return f;


  f = TYPE_VFIELD (record);
  if (f && TREE_CODE (f) == FIELD_DECL
      && fields_compatible_p (f, orig_field))
    return f;



  return orig_field;
}
