
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int EXPAND_NORMAL ;
 int GET_MODE (int ) ;
 int TREE_CHAIN (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOIDmode ;
 int convert_modes (int,int,int ,int) ;
 int expand_expr (int ,int *,int,int ) ;
 int expand_sync_fetch_operation (int ,int ,int,int,int ) ;
 int expand_sync_operation (int ,int ,int) ;
 int get_builtin_sync_mem (int ,int) ;

__attribute__((used)) static rtx
expand_builtin_sync_operation (enum machine_mode mode, tree arglist,
          enum rtx_code code, bool after,
          rtx target, bool ignore)
{
  rtx val, mem;
  enum machine_mode old_mode;


  mem = get_builtin_sync_mem (TREE_VALUE (arglist), mode);

  arglist = TREE_CHAIN (arglist);
  val = expand_expr (TREE_VALUE (arglist), ((void*)0), mode, EXPAND_NORMAL);


  old_mode = GET_MODE (val);
  if (old_mode == VOIDmode)
    old_mode = TYPE_MODE (TREE_TYPE (TREE_VALUE (arglist)));
  val = convert_modes (mode, old_mode, val, 1);

  if (ignore)
    return expand_sync_operation (mem, val, code);
  else
    return expand_sync_fetch_operation (mem, val, code, after, target);
}
