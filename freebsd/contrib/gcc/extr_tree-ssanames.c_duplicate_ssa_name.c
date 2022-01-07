
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct ptr_info_def {int dummy; } ;


 struct ptr_info_def* SSA_NAME_PTR_INFO (int ) ;
 int SSA_NAME_VAR (int ) ;
 int duplicate_ssa_name_ptr_info (int ,struct ptr_info_def*) ;
 int make_ssa_name (int ,int ) ;

tree
duplicate_ssa_name (tree name, tree stmt)
{
  tree new_name = make_ssa_name (SSA_NAME_VAR (name), stmt);
  struct ptr_info_def *old_ptr_info = SSA_NAME_PTR_INFO (name);

  if (old_ptr_info)
    duplicate_ssa_name_ptr_info (new_name, old_ptr_info);

  return new_name;
}
