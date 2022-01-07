
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* machine; } ;
struct TYPE_6__ {unsigned int n_local_regs; int n_input_regs; int n_output_regs; unsigned int reg_fp; int reg_save_b0; int reg_save_ar_pfs; scalar_t__ reg_save_gp; scalar_t__ reg_save_pr; scalar_t__ reg_save_ar_unat; scalar_t__ reg_save_ar_lc; int n_spilled; scalar_t__ initialized; int mask; scalar_t__ extra_spill_size; scalar_t__ spill_size; scalar_t__ spill_cfa_off; scalar_t__ total_size; scalar_t__ n_rotate_regs; } ;
struct TYPE_5__ {scalar_t__ n_varargs; scalar_t__ ia64_eh_epilogue_bsp; scalar_t__ ia64_eh_epilogue_sp; } ;
typedef scalar_t__ HOST_WIDE_INT ;
typedef int HARD_REG_SET ;


 size_t AR_LC_REGNUM ;
 size_t AR_PFS_REGNUM ;
 size_t AR_UNAT_REGNUM ;
 size_t BR_REG (int) ;
 int CLEAR_HARD_REG_SET (int ) ;
 int COPY_HARD_REG_SET (int ,int ) ;
 unsigned int FR_REG (int) ;
 size_t GR_REG (int) ;
 scalar_t__ IA64_STACK_ALIGN (scalar_t__) ;
 unsigned int IN_REG (int) ;
 unsigned int LOC_REG (int) ;
 void* MAX (int,scalar_t__) ;
 unsigned int OUT_REG (int) ;
 unsigned int PR_REG (int) ;
 int SET_HARD_REG_BIT (int ,size_t) ;
 int TREE_TYPE (int ) ;
 int TYPE_ATTRIBUTES (int ) ;
 int * call_used_regs ;
 TYPE_4__* cfun ;
 TYPE_2__ current_frame_info ;
 scalar_t__ current_function_calls_setjmp ;
 int current_function_decl ;
 scalar_t__ current_function_is_leaf ;
 scalar_t__ current_function_outgoing_args_size ;
 scalar_t__ current_function_pretend_args_size ;
 scalar_t__ current_function_profile ;
 int diddle_return_value (int (*) (scalar_t__,int *),int *) ;
 void* find_gr_spill (int) ;
 scalar_t__ frame_pointer_needed ;
 scalar_t__ lookup_attribute (char*,int ) ;
 int mark_reg_gr_used_mask (scalar_t__,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int* regs_ever_live ;
 scalar_t__ reload_completed ;

__attribute__((used)) static void
ia64_compute_frame_size (HOST_WIDE_INT size)
{
  HOST_WIDE_INT total_size;
  HOST_WIDE_INT spill_size = 0;
  HOST_WIDE_INT extra_spill_size = 0;
  HOST_WIDE_INT pretend_args_size;
  HARD_REG_SET mask;
  int n_spilled = 0;
  int spilled_gr_p = 0;
  int spilled_fr_p = 0;
  unsigned int regno;
  int i;

  if (current_frame_info.initialized)
    return;

  memset (&current_frame_info, 0, sizeof current_frame_info);
  CLEAR_HARD_REG_SET (mask);


  diddle_return_value (mark_reg_gr_used_mask, ((void*)0));


  if (cfun->machine->ia64_eh_epilogue_sp)
    mark_reg_gr_used_mask (cfun->machine->ia64_eh_epilogue_sp, ((void*)0));
  if (cfun->machine->ia64_eh_epilogue_bsp)
    mark_reg_gr_used_mask (cfun->machine->ia64_eh_epilogue_bsp, ((void*)0));







  regno = LOC_REG (78) + ! frame_pointer_needed;
  for (; regno >= LOC_REG (0); regno--)
    if (regs_ever_live[regno])
      break;
  current_frame_info.n_local_regs = regno - LOC_REG (0) + 1;





  if (cfun->machine->n_varargs > 0
      || lookup_attribute ("syscall_linkage",
      TYPE_ATTRIBUTES (TREE_TYPE (current_function_decl))))
    current_frame_info.n_input_regs = 8;
  else
    {
      for (regno = IN_REG (7); regno >= IN_REG (0); regno--)
 if (regs_ever_live[regno])
   break;
      current_frame_info.n_input_regs = regno - IN_REG (0) + 1;
    }

  for (regno = OUT_REG (7); regno >= OUT_REG (0); regno--)
    if (regs_ever_live[regno])
      break;
  i = regno - OUT_REG (0) + 1;






  if (current_function_profile)
    i = MAX (i, 1);

  current_frame_info.n_output_regs = i;


  current_frame_info.n_rotate_regs = 0;





  for (regno = FR_REG (2); regno <= FR_REG (127); regno++)
    if (regs_ever_live[regno] && ! call_used_regs[regno])
      {
 SET_HARD_REG_BIT (mask, regno);
 spill_size += 16;
 n_spilled += 1;
 spilled_fr_p = 1;
      }

  for (regno = GR_REG (1); regno <= GR_REG (31); regno++)
    if (regs_ever_live[regno] && ! call_used_regs[regno])
      {
 SET_HARD_REG_BIT (mask, regno);
 spill_size += 8;
 n_spilled += 1;
 spilled_gr_p = 1;
      }

  for (regno = BR_REG (1); regno <= BR_REG (7); regno++)
    if (regs_ever_live[regno] && ! call_used_regs[regno])
      {
 SET_HARD_REG_BIT (mask, regno);
 spill_size += 8;
 n_spilled += 1;
      }




  if (frame_pointer_needed)
    {
      current_frame_info.reg_fp = find_gr_spill (1);




      if (current_frame_info.reg_fp == 0)
 {
   current_frame_info.reg_fp = LOC_REG (79);
   current_frame_info.n_local_regs++;
 }
    }

  if (! current_function_is_leaf)
    {



      SET_HARD_REG_BIT (mask, BR_REG (0));

      current_frame_info.reg_save_b0 = find_gr_spill (1);
      if (current_frame_info.reg_save_b0 == 0)
 {
   extra_spill_size += 8;
   n_spilled += 1;
 }


      SET_HARD_REG_BIT (mask, AR_PFS_REGNUM);
      current_frame_info.reg_save_ar_pfs = find_gr_spill (1);
      if (current_frame_info.reg_save_ar_pfs == 0)
 {
   extra_spill_size += 8;
   n_spilled += 1;
 }



      current_frame_info.reg_save_gp
 = (current_function_calls_setjmp ? 0 : find_gr_spill (1));
      if (current_frame_info.reg_save_gp == 0)
 {
   SET_HARD_REG_BIT (mask, GR_REG (1));
   spill_size += 8;
   n_spilled += 1;
 }
    }
  else
    {
      if (regs_ever_live[BR_REG (0)] && ! call_used_regs[BR_REG (0)])
 {
   SET_HARD_REG_BIT (mask, BR_REG (0));
   extra_spill_size += 8;
   n_spilled += 1;
 }

      if (regs_ever_live[AR_PFS_REGNUM])
 {
   SET_HARD_REG_BIT (mask, AR_PFS_REGNUM);
   current_frame_info.reg_save_ar_pfs = find_gr_spill (1);
   if (current_frame_info.reg_save_ar_pfs == 0)
     {
       extra_spill_size += 8;
       n_spilled += 1;
     }
 }
    }







  if (current_frame_info.reg_fp != 0
      && current_frame_info.reg_save_b0 == current_frame_info.reg_fp + 1
      && current_frame_info.reg_save_ar_pfs == current_frame_info.reg_fp + 2)
    {
      current_frame_info.reg_save_b0 = current_frame_info.reg_fp;
      current_frame_info.reg_save_ar_pfs = current_frame_info.reg_fp + 1;
      current_frame_info.reg_fp = current_frame_info.reg_fp + 2;
    }


  for (regno = PR_REG (0); regno <= PR_REG (63); regno++)
    if (regs_ever_live[regno] && ! call_used_regs[regno])
      break;
  if (regno <= PR_REG (63))
    {
      SET_HARD_REG_BIT (mask, PR_REG (0));
      current_frame_info.reg_save_pr = find_gr_spill (1);
      if (current_frame_info.reg_save_pr == 0)
 {
   extra_spill_size += 8;
   n_spilled += 1;
 }



      for (regno = PR_REG (0); regno <= PR_REG (63); regno++)
 regs_ever_live[regno] = 1;
    }




  if (spilled_gr_p || cfun->machine->n_varargs
      || regs_ever_live[AR_UNAT_REGNUM])
    {
      regs_ever_live[AR_UNAT_REGNUM] = 1;
      SET_HARD_REG_BIT (mask, AR_UNAT_REGNUM);
      current_frame_info.reg_save_ar_unat = find_gr_spill (spill_size == 0);
      if (current_frame_info.reg_save_ar_unat == 0)
 {
   extra_spill_size += 8;
   n_spilled += 1;
 }
    }

  if (regs_ever_live[AR_LC_REGNUM])
    {
      SET_HARD_REG_BIT (mask, AR_LC_REGNUM);
      current_frame_info.reg_save_ar_lc = find_gr_spill (spill_size == 0);
      if (current_frame_info.reg_save_ar_lc == 0)
 {
   extra_spill_size += 8;
   n_spilled += 1;
 }
    }




  if (spilled_fr_p)
    pretend_args_size = IA64_STACK_ALIGN (current_function_pretend_args_size);
  else
    pretend_args_size = current_function_pretend_args_size;

  total_size = (spill_size + extra_spill_size + size + pretend_args_size
  + current_function_outgoing_args_size);
  total_size = IA64_STACK_ALIGN (total_size);




  if (current_function_is_leaf)
    total_size = MAX (0, total_size - 16);

  current_frame_info.total_size = total_size;
  current_frame_info.spill_cfa_off = pretend_args_size - 16;
  current_frame_info.spill_size = spill_size;
  current_frame_info.extra_spill_size = extra_spill_size;
  COPY_HARD_REG_SET (current_frame_info.mask, mask);
  current_frame_info.n_spilled = n_spilled;
  current_frame_info.initialized = reload_completed;
}
