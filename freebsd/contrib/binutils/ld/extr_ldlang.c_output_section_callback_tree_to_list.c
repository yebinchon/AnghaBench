
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int children; } ;
typedef TYPE_1__ lang_wild_statement_type ;
struct TYPE_7__ {struct TYPE_7__* right; int section; struct TYPE_7__* left; } ;
typedef TYPE_2__ lang_section_bst_type ;
typedef int lang_output_section_statement_type ;


 int free (TYPE_2__*) ;
 int lang_add_section (int *,int ,int *) ;

__attribute__((used)) static void
output_section_callback_tree_to_list (lang_wild_statement_type *ptr,
          lang_section_bst_type *tree,
          void *output)
{
  if (tree->left)
    output_section_callback_tree_to_list (ptr, tree->left, output);

  lang_add_section (&ptr->children, tree->section,
      (lang_output_section_statement_type *) output);

  if (tree->right)
    output_section_callback_tree_to_list (ptr, tree->right, output);

  free (tree);
}
