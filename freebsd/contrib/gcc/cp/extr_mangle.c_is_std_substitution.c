
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef size_t substitution_identifier_index_t ;


 scalar_t__ CLASS_TYPE_P (int * const) ;
 int CP_DECL_CONTEXT (int *) ;
 scalar_t__ DECL_NAME (int ) ;
 scalar_t__ DECL_NAMESPACE_STD_P (int ) ;
 scalar_t__ DECL_P (int * const) ;
 int * TREE_TYPE (int * const) ;
 scalar_t__ TYPE_LANG_SPECIFIC (int *) ;
 int * TYPE_NAME (int * const) ;
 scalar_t__ TYPE_TEMPLATE_INFO (int *) ;
 int TYPE_TI_TEMPLATE (int *) ;
 scalar_t__* subst_identifiers ;

__attribute__((used)) static inline int
is_std_substitution (const tree node,
       const substitution_identifier_index_t index)
{
  tree type = ((void*)0);
  tree decl = ((void*)0);

  if (DECL_P (node))
    {
      type = TREE_TYPE (node);
      decl = node;
    }
  else if (CLASS_TYPE_P (node))
    {
      type = node;
      decl = TYPE_NAME (node);
    }
  else

    return 0;

  return (DECL_NAMESPACE_STD_P (CP_DECL_CONTEXT (decl))
   && TYPE_LANG_SPECIFIC (type)
   && TYPE_TEMPLATE_INFO (type)
   && (DECL_NAME (TYPE_TI_TEMPLATE (type))
       == subst_identifiers[index]));
}
