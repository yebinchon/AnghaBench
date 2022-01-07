
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int FILE ;


 int CODE_CONTAINS_STRUCT (scalar_t__,int ) ;
 int DECL_LANG_SPECIFIC (int ) ;
 scalar_t__ DECL_MUTABLE_P (int ) ;
 scalar_t__ DECL_PENDING_INLINE_INFO (int ) ;
 scalar_t__ DECL_SORTED_FIELDS (int ) ;
 scalar_t__ DECL_TEMPLATE_INFO (int ) ;
 scalar_t__ FIELD_DECL ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 int TS_DECL_COMMON ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ VAR_DECL ;
 int fprintf (int *,char*,...) ;
 int indent_to (int *,int) ;

void
cxx_print_decl (FILE *file, tree node, int indent)
{
  if (TREE_CODE (node) == FIELD_DECL)
    {
      if (DECL_MUTABLE_P (node))
 {
   indent_to (file, indent + 3);
   fprintf (file, " mutable ");
 }
      return;
    }

  if (!CODE_CONTAINS_STRUCT (TREE_CODE (node), TS_DECL_COMMON)
      || !DECL_LANG_SPECIFIC (node))
    return;
  indent_to (file, indent + 3);
  if (TREE_CODE (node) == FUNCTION_DECL
      && DECL_PENDING_INLINE_INFO (node))
    fprintf (file, " pending-inline-info %p",
      (void *) DECL_PENDING_INLINE_INFO (node));
  if (TREE_CODE (node) == TYPE_DECL
      && DECL_SORTED_FIELDS (node))
    fprintf (file, " sorted-fields %p",
      (void *) DECL_SORTED_FIELDS (node));
  if ((TREE_CODE (node) == FUNCTION_DECL || TREE_CODE (node) == VAR_DECL)
      && DECL_TEMPLATE_INFO (node))
    fprintf (file, " template-info %p",
      (void *) DECL_TEMPLATE_INFO (node));
}
