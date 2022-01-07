
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ FIRST_PARM_OFFSET (int ) ;
 int REG_PARM_STACK_SPACE (int ) ;
 scalar_t__ SPARC_STACK_ALIGN (int) ;
 scalar_t__ STARTING_FRAME_OFFSET ;
 scalar_t__ TARGET_ARCH64 ;
 scalar_t__ TARGET_V9 ;
 int actual_fsize ;
 int apparent_fsize ;
 int * call_used_regs ;
 int current_function_decl ;
 int current_function_outgoing_args_size ;
 int num_gfregs ;
 scalar_t__* regs_ever_live ;

HOST_WIDE_INT
sparc_compute_frame_size (HOST_WIDE_INT size, int leaf_function_p)
{
  int outgoing_args_size = (current_function_outgoing_args_size
       + REG_PARM_STACK_SPACE (current_function_decl));
  int n_regs = 0;
  int i;

  if (TARGET_ARCH64)
    {
      for (i = 0; i < 8; i++)
 if (regs_ever_live[i] && ! call_used_regs[i])
   n_regs += 2;
    }
  else
    {
      for (i = 0; i < 8; i += 2)
 if ((regs_ever_live[i] && ! call_used_regs[i])
     || (regs_ever_live[i+1] && ! call_used_regs[i+1]))
   n_regs += 2;
    }

  for (i = 32; i < (TARGET_V9 ? 96 : 64); i += 2)
    if ((regs_ever_live[i] && ! call_used_regs[i])
 || (regs_ever_live[i+1] && ! call_used_regs[i+1]))
      n_regs += 2;


  num_gfregs = n_regs;

  if (leaf_function_p
      && n_regs == 0
      && size == 0
      && current_function_outgoing_args_size == 0)
    actual_fsize = apparent_fsize = 0;
  else
    {

      apparent_fsize = (size - STARTING_FRAME_OFFSET + 7) & -8;
      apparent_fsize += n_regs * 4;
      actual_fsize = apparent_fsize + ((outgoing_args_size + 7) & -8);
    }




  if (! leaf_function_p || size > 0)
    actual_fsize += FIRST_PARM_OFFSET (current_function_decl);

  return SPARC_STACK_ALIGN (actual_fsize);
}
