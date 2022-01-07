
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int (* mips_save_restore_fn ) (int ,int ) ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int gen_frame_mem (int,int ) ;
 int gen_rtx_REG (int,int) ;
 int plus_constant (int ,int ) ;
 int stack_pointer_rtx ;

__attribute__((used)) static void
mips_save_restore_reg (enum machine_mode mode, int regno,
         HOST_WIDE_INT offset, mips_save_restore_fn fn)
{
  rtx mem;

  mem = gen_frame_mem (mode, plus_constant (stack_pointer_rtx, offset));

  fn (gen_rtx_REG (mode, regno), mem);
}
