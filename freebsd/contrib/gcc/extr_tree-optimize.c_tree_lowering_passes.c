
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CDI_POST_DOMINATORS ;
 int DECL_STRUCT_FUNCTION (int ) ;
 int all_lowering_passes ;
 int bitmap_obstack_initialize (int *) ;
 int bitmap_obstack_release (int *) ;
 int compact_blocks () ;
 int current_function_decl ;
 int execute_pass_list (int ) ;
 int free_dominance_info (int ) ;
 int pop_cfun () ;
 int push_cfun (int ) ;
 int tree_register_cfg_hooks () ;

void
tree_lowering_passes (tree fn)
{
  tree saved_current_function_decl = current_function_decl;

  current_function_decl = fn;
  push_cfun (DECL_STRUCT_FUNCTION (fn));
  tree_register_cfg_hooks ();
  bitmap_obstack_initialize (((void*)0));
  execute_pass_list (all_lowering_passes);
  free_dominance_info (CDI_POST_DOMINATORS);
  compact_blocks ();
  current_function_decl = saved_current_function_decl;
  bitmap_obstack_release (((void*)0));
  pop_cfun ();
}
