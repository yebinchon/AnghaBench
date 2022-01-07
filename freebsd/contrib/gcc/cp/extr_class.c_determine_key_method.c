
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ CLASSTYPE_KEY_METHOD ;


 scalar_t__ CLASSTYPE_INTERFACE_KNOWN (scalar_t__) ;
 scalar_t__ CLASSTYPE_TEMPLATE_INSTANTIATION (scalar_t__) ;
 int DECL_DECLARED_INLINE_P (scalar_t__) ;
 int DECL_PURE_VIRTUAL_P (scalar_t__) ;
 scalar_t__ DECL_VINDEX (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TYPE_FOR_JAVA (scalar_t__) ;
 scalar_t__ TYPE_METHODS (scalar_t__) ;
 scalar_t__ processing_template_decl ;

void
determine_key_method (tree type)
{
  tree method;

  if (TYPE_FOR_JAVA (type)
      || processing_template_decl
      || CLASSTYPE_TEMPLATE_INSTANTIATION (type)
      || CLASSTYPE_INTERFACE_KNOWN (type))
    return;





  for (method = TYPE_METHODS (type); method != NULL_TREE;
       method = TREE_CHAIN (method))
    if (DECL_VINDEX (method) != NULL_TREE
 && ! DECL_DECLARED_INLINE_P (method)
 && ! DECL_PURE_VIRTUAL_P (method))
      {
 CLASSTYPE_KEY_METHOD (type) = method;
 break;
      }

  return;
}
