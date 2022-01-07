
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* var_ann_t ;
typedef int tree ;
struct ptr_info_def {scalar_t__ pt_vars; scalar_t__ name_mem_tag; } ;
struct TYPE_5__ {int (* types_compatible_p ) (int ,int ) ;} ;
struct TYPE_4__ {scalar_t__ symbol_mem_tag; } ;


 scalar_t__ NULL_TREE ;
 int POINTER_TYPE_P (int ) ;
 struct ptr_info_def* SSA_NAME_PTR_INFO (int ) ;
 int SSA_NAME_VAR (int ) ;
 int TREE_TYPE (int ) ;
 int bitmap_intersect_p (scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ get_alias_set (int ) ;
 TYPE_3__ lang_hooks ;
 int stub1 (int ,int ) ;
 TYPE_1__* var_ann (int ) ;

void
merge_alias_info (tree orig, tree new)
{
  tree new_sym = SSA_NAME_VAR (new);
  tree orig_sym = SSA_NAME_VAR (orig);
  var_ann_t new_ann = var_ann (new_sym);
  var_ann_t orig_ann = var_ann (orig_sym);

  gcc_assert (POINTER_TYPE_P (TREE_TYPE (orig)));
  gcc_assert (POINTER_TYPE_P (TREE_TYPE (new)));
  if (new_ann->symbol_mem_tag == NULL_TREE)
    new_ann->symbol_mem_tag = orig_ann->symbol_mem_tag;
  else if (orig_ann->symbol_mem_tag == NULL_TREE)
    orig_ann->symbol_mem_tag = new_ann->symbol_mem_tag;
  else
    gcc_assert (new_ann->symbol_mem_tag == orig_ann->symbol_mem_tag);
  if (SSA_NAME_PTR_INFO (orig) && SSA_NAME_PTR_INFO (new))
    {
      struct ptr_info_def *orig_ptr_info = SSA_NAME_PTR_INFO (orig);
      struct ptr_info_def *new_ptr_info = SSA_NAME_PTR_INFO (new);
      if (orig_ptr_info->name_mem_tag
   && new_ptr_info->name_mem_tag
   && orig_ptr_info->pt_vars
   && new_ptr_info->pt_vars)
 gcc_assert (bitmap_intersect_p (new_ptr_info->pt_vars,
     orig_ptr_info->pt_vars));
    }
}
