
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {int decl; } ;
struct TYPE_4__ {scalar_t__ (* struct_value_rtx ) (int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ calls; } ;


 int BITS_PER_UNIT ;
 int CEIL (int,int) ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 scalar_t__ FUNCTION_ARG_REGNO_P (unsigned int) ;
 int GET_MODE_ALIGNMENT (int) ;
 int GET_MODE_SIZE (int) ;
 int Pmode ;
 int TREE_TYPE (int ) ;
 int VOIDmode ;
 int* apply_args_mode ;
 int* apply_args_reg_offset ;
 TYPE_3__* cfun ;
 int gcc_assert (int) ;
 int* reg_raw_mode ;
 scalar_t__ stub1 (int ,int ) ;
 TYPE_2__ targetm ;

__attribute__((used)) static int
apply_args_size (void)
{
  static int size = -1;
  int align;
  unsigned int regno;
  enum machine_mode mode;


  if (size < 0)
    {

      size = GET_MODE_SIZE (Pmode);



      if (targetm.calls.struct_value_rtx (cfun ? TREE_TYPE (cfun->decl) : 0, 0))
 size += GET_MODE_SIZE (Pmode);

      for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
 if (FUNCTION_ARG_REGNO_P (regno))
   {
     mode = reg_raw_mode[regno];

     gcc_assert (mode != VOIDmode);

     align = GET_MODE_ALIGNMENT (mode) / BITS_PER_UNIT;
     if (size % align != 0)
       size = CEIL (size, align) * align;
     apply_args_reg_offset[regno] = size;
     size += GET_MODE_SIZE (mode);
     apply_args_mode[regno] = mode;
   }
 else
   {
     apply_args_mode[regno] = VOIDmode;
     apply_args_reg_offset[regno] = 0;
   }
    }
  return size;
}
