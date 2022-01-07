
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int mode; } ;


 scalar_t__ CODE_FOR_save_stack_nonlocal ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ HAVE_save_stack_nonlocal ;
 scalar_t__ HAVE_setjmp ;
 int NULL_RTX ;
 int Pmode ;
 int SAVE_NONLOCAL ;
 int STACK_SAVEAREA_MODE (int ) ;
 int emit_insn (int ) ;
 int emit_stack_save (int ,int *,int ) ;
 int gen_rtx_MEM (int,int ) ;
 int gen_setjmp () ;
 TYPE_2__* insn_data ;
 int memory_address (int,int ) ;
 int plus_constant (int ,int) ;

__attribute__((used)) static void
expand_builtin_update_setjmp_buf (rtx buf_addr)
{
  enum machine_mode sa_mode = Pmode;
  rtx stack_save;
  stack_save
    = gen_rtx_MEM (sa_mode,
     memory_address
     (sa_mode,
      plus_constant (buf_addr, 2 * GET_MODE_SIZE (Pmode))));






  emit_stack_save (SAVE_NONLOCAL, &stack_save, NULL_RTX);
}
