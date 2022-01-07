
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int EXPAND_NORMAL ;
 int GET_MODE (int ) ;
 int TREE_CHAIN (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOIDmode ;
 int convert_modes (int,int,int ,int) ;
 int expand_bool_compare_and_swap (int ,int ,int ,int ) ;
 int expand_expr (int ,int *,int,int ) ;
 int expand_val_compare_and_swap (int ,int ,int ,int ) ;
 int get_builtin_sync_mem (int ,int) ;

__attribute__((used)) static rtx
expand_builtin_compare_and_swap (enum machine_mode mode, tree arglist,
     bool is_bool, rtx target)
{
  rtx old_val, new_val, mem;
  enum machine_mode old_mode;


  mem = get_builtin_sync_mem (TREE_VALUE (arglist), mode);

  arglist = TREE_CHAIN (arglist);
  old_val = expand_expr (TREE_VALUE (arglist), ((void*)0), mode, EXPAND_NORMAL);


  old_mode = GET_MODE (old_val);
  if (old_mode == VOIDmode)
    old_mode = TYPE_MODE (TREE_TYPE (TREE_VALUE (arglist)));
  old_val = convert_modes (mode, old_mode, old_val, 1);

  arglist = TREE_CHAIN (arglist);
  new_val = expand_expr (TREE_VALUE (arglist), ((void*)0), mode, EXPAND_NORMAL);


  old_mode = GET_MODE (new_val);
  if (old_mode == VOIDmode)
    old_mode = TYPE_MODE (TREE_TYPE (TREE_VALUE (arglist)));
  new_val = convert_modes (mode, old_mode, new_val, 1);

  if (is_bool)
    return expand_bool_compare_and_swap (mem, old_val, new_val, target);
  else
    return expand_val_compare_and_swap (mem, old_val, new_val, target);
}
