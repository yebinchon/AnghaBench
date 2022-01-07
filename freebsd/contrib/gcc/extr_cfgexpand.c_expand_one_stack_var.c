
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int HOST_WIDE_INT ;


 int DECL_SIZE_UNIT (int ) ;
 int alloc_stack_frame_space (int ,int ) ;
 int expand_one_stack_var_at (int ,int ) ;
 int get_decl_align_unit (int ) ;
 int tree_low_cst (int ,int) ;

__attribute__((used)) static void
expand_one_stack_var (tree var)
{
  HOST_WIDE_INT size, offset, align;

  size = tree_low_cst (DECL_SIZE_UNIT (var), 1);
  align = get_decl_align_unit (var);
  offset = alloc_stack_frame_space (size, align);

  expand_one_stack_var_at (var, offset);
}
