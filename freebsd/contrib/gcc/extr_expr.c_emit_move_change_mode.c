
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ MEM_P (int ) ;
 int adjust_address (int ,int,int ) ;
 int adjust_address_nv (int ,int,int ) ;
 int copy_replacements (int ,int ) ;
 scalar_t__ reload_in_progress ;
 int simplify_gen_subreg (int,int ,int,int ) ;
 int simplify_subreg (int,int ,int,int ) ;

__attribute__((used)) static rtx
emit_move_change_mode (enum machine_mode new_mode,
         enum machine_mode old_mode, rtx x, bool force)
{
  rtx ret;

  if (MEM_P (x))
    {


      if (reload_in_progress)
 {


   ret = adjust_address_nv (x, new_mode, 0);
   copy_replacements (x, ret);
 }
      else
 ret = adjust_address (x, new_mode, 0);
    }
  else
    {






      if (force)
 ret = simplify_gen_subreg (new_mode, x, old_mode, 0);
      else
 ret = simplify_subreg (new_mode, x, old_mode, 0);
    }

  return ret;
}
