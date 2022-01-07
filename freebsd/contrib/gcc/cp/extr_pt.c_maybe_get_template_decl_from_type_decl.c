
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_TEMPLATE_INFO (int ) ;
 scalar_t__ CLASSTYPE_TI_TEMPLATE (int ) ;
 scalar_t__ CLASS_TYPE_P (int ) ;
 scalar_t__ DECL_ARTIFICIAL (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;

tree
maybe_get_template_decl_from_type_decl (tree decl)
{
  return (decl != NULL_TREE
   && TREE_CODE (decl) == TYPE_DECL
   && DECL_ARTIFICIAL (decl)
   && CLASS_TYPE_P (TREE_TYPE (decl))
   && CLASSTYPE_TEMPLATE_INFO (TREE_TYPE (decl)))
    ? CLASSTYPE_TI_TEMPLATE (TREE_TYPE (decl)) : decl;
}
