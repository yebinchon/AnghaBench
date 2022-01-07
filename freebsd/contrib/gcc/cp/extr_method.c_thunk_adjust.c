
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int HOST_WIDE_INT ;


 int INDIRECT_REF ;
 int NOP_EXPR ;
 int PLUS_EXPR ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_pointer_type (scalar_t__) ;
 scalar_t__ fold_build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ save_expr (scalar_t__) ;
 scalar_t__ ssize_int (int ) ;
 scalar_t__ vtable_entry_type ;

__attribute__((used)) static tree
thunk_adjust (tree ptr, bool this_adjusting,
       HOST_WIDE_INT fixed_offset, tree virtual_offset)
{
  if (this_adjusting)

    ptr = fold_build2 (PLUS_EXPR, TREE_TYPE (ptr), ptr,
         ssize_int (fixed_offset));



  if (virtual_offset)
    {
      tree vtable;

      ptr = save_expr (ptr);

      vtable = build1 (NOP_EXPR,
         build_pointer_type (build_pointer_type
        (vtable_entry_type)),
         ptr);

      vtable = build1 (INDIRECT_REF, TREE_TYPE (TREE_TYPE (vtable)), vtable);

      vtable = build2 (PLUS_EXPR, TREE_TYPE (vtable), vtable, virtual_offset);

      vtable = build1 (INDIRECT_REF, TREE_TYPE (TREE_TYPE (vtable)), vtable);

      ptr = fold_build2 (PLUS_EXPR, TREE_TYPE (ptr), ptr, vtable);
    }

  if (!this_adjusting)

    ptr = fold_build2 (PLUS_EXPR, TREE_TYPE (ptr), ptr,
         ssize_int (fixed_offset));

  return ptr;
}
