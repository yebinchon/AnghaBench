
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int copy_body_data ;


 scalar_t__ PARM_DECL ;
 scalar_t__ RESULT_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 int copy_decl_no_change (int ,int *) ;
 int copy_decl_to_var (int ,int *) ;

__attribute__((used)) static tree
copy_decl_maybe_to_var (tree decl, copy_body_data *id)
{
  if (TREE_CODE (decl) == PARM_DECL || TREE_CODE (decl) == RESULT_DECL)
    return copy_decl_to_var (decl, id);
  else
    return copy_decl_no_change (decl, id);
}
