
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ANON_AGGR_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_ARTIFICIAL (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ FIELD_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_STATIC (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;

tree
lookup_anon_field (tree t, tree type)
{
  tree field;

  for (field = TYPE_FIELDS (t); field; field = TREE_CHAIN (field))
    {
      if (TREE_STATIC (field))
 continue;
      if (TREE_CODE (field) != FIELD_DECL || DECL_ARTIFICIAL (field))
 continue;


      if (DECL_NAME (field) == NULL_TREE
   && type == TYPE_MAIN_VARIANT (TREE_TYPE (field)))
 {
   return field;
 }


      if (DECL_NAME (field) == NULL_TREE
   && ANON_AGGR_TYPE_P (TREE_TYPE (field)))
 {
   tree subfield = lookup_anon_field (TREE_TYPE (field), type);
   if (subfield)
     return subfield;
 }
    }
  return NULL_TREE;
}
