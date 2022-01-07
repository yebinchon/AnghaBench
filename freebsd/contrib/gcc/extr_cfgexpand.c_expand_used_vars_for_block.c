
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BLOCK_CHAIN (scalar_t__) ;
 scalar_t__ BLOCK_SUBBLOCKS (scalar_t__) ;
 scalar_t__ BLOCK_VARS (scalar_t__) ;
 scalar_t__ DECL_PRESERVE_P (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_STATIC (scalar_t__) ;
 scalar_t__ TREE_USED (scalar_t__) ;
 int add_stack_var_conflict (size_t,size_t) ;
 int expand_one_var (scalar_t__,int) ;
 int flag_unit_at_a_time ;
 int resize_stack_vars_conflict (size_t) ;
 size_t stack_vars_num ;

__attribute__((used)) static void
expand_used_vars_for_block (tree block, bool toplevel)
{
  size_t i, j, old_sv_num, this_sv_num, new_sv_num;
  tree t;

  old_sv_num = toplevel ? 0 : stack_vars_num;


  for (t = BLOCK_VARS (block); t ; t = TREE_CHAIN (t))
    if (TREE_USED (t)



 || (!flag_unit_at_a_time && TREE_STATIC (t)
     && DECL_PRESERVE_P (t)))
      expand_one_var (t, toplevel);

  this_sv_num = stack_vars_num;


  for (t = BLOCK_SUBBLOCKS (block); t ; t = BLOCK_CHAIN (t))
    expand_used_vars_for_block (t, 0);






  if (old_sv_num < this_sv_num)
    {
      new_sv_num = stack_vars_num;
      resize_stack_vars_conflict (new_sv_num);

      for (i = old_sv_num; i < new_sv_num; ++i)
 for (j = i < this_sv_num ? i+1 : this_sv_num; j-- > old_sv_num ;)
   add_stack_var_conflict (i, j);
    }
}
