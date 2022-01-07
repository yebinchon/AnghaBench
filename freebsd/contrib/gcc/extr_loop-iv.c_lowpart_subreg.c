
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int simplify_gen_subreg (int,int ,int,int ) ;
 int subreg_lowpart_offset (int,int) ;

rtx
lowpart_subreg (enum machine_mode outer_mode, rtx expr,
  enum machine_mode inner_mode)
{
  return simplify_gen_subreg (outer_mode, expr, inner_mode,
         subreg_lowpart_offset (outer_mode, inner_mode));
}
