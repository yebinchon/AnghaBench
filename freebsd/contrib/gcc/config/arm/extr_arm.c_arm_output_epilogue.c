
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * rtx ;
struct TYPE_3__ {int saved_args; int frame; int outgoing_args; int saved_regs; } ;
typedef TYPE_1__ arm_stack_offsets ;
typedef int FILE ;


 int ARM_EH_STACKADJ_REGNUM ;




 scalar_t__ ARM_FT_NORMAL ;
 scalar_t__ ARM_FUNC_TYPE (unsigned long) ;
 int FALSE ;
 int FIRST_FPA_REGNUM ;
 int FIRST_IWMMXT_REGNUM ;
 int FIRST_VFP_REGNUM ;
 scalar_t__ FPUTYPE_FPA_EMU2 ;
 int FP_REGNUM ;
 int * GEN_INT (int) ;
 int IP_REGNUM ;
 scalar_t__ IS_INTERRUPT (unsigned long) ;
 scalar_t__ IS_NAKED (unsigned long) ;
 scalar_t__ IS_VOLATILE (unsigned long) ;
 int LAST_ARM_REGNUM ;
 int LAST_FPA_REGNUM ;
 int LAST_IWMMXT_REGNUM ;
 int LAST_VFP_REGNUM ;
 int LR_REGNUM ;
 scalar_t__ NEED_PLT_RELOC ;
 int PC_REGNUM ;
 int Pmode ;
 int SP_REGNUM ;
 scalar_t__ TARGET_ABORT_NORETURN ;
 scalar_t__ TARGET_HARD_FLOAT ;
 scalar_t__ TARGET_IWMMXT ;
 scalar_t__ TARGET_VFP ;
 int arm_arch4t ;
 int arm_arch5 ;
 unsigned long arm_compute_save_reg_mask () ;
 unsigned long arm_current_func_type () ;
 scalar_t__ arm_fpu_arch ;
 TYPE_1__* arm_get_frame_offsets () ;
 int arm_get_vfp_saved_size () ;
 int arm_output_fldmx (int *,int,int,int) ;
 int asm_fprintf (int *,char*,int,...) ;
 int * asm_out_file ;
 int assemble_external_libcall (int *) ;
 int bit_count (unsigned long) ;
 scalar_t__* call_used_regs ;
 scalar_t__ current_function_calls_alloca ;
 scalar_t__ current_function_calls_eh_return ;
 int current_function_pretend_args_size ;
 scalar_t__ frame_pointer_needed ;
 int gcc_assert (unsigned long) ;
 int * gen_rtx_SYMBOL_REF (int ,char*) ;
 int output_add_immediate (int **) ;
 int output_asm_insn (char*,int **) ;
 int print_multi_reg (int *,char*,int,unsigned long) ;
 scalar_t__* regs_ever_live ;
 scalar_t__ return_used_this_function ;
 int * stack_pointer_rtx ;
 scalar_t__ use_return_insn (int ,int *) ;

const char *
arm_output_epilogue (rtx sibling)
{
  int reg;
  unsigned long saved_regs_mask;
  unsigned long func_type;


  int floats_offset = 0;
  rtx operands[3];
  FILE * f = asm_out_file;
  unsigned int lrm_count = 0;
  int really_return = (sibling == ((void*)0));
  int start_reg;
  arm_stack_offsets *offsets;



  if (use_return_insn (FALSE, sibling) && return_used_this_function)
    return "";

  func_type = arm_current_func_type ();

  if (IS_NAKED (func_type))

    return "";

  if (IS_VOLATILE (func_type) && TARGET_ABORT_NORETURN)
    {
      rtx op;


      op = gen_rtx_SYMBOL_REF (Pmode, NEED_PLT_RELOC ? "abort(PLT)" : "abort");
      assemble_external_libcall (op);
      output_asm_insn ("bl\t%a0", &op);

      return "";
    }



  gcc_assert (!current_function_calls_eh_return || really_return);

  offsets = arm_get_frame_offsets ();
  saved_regs_mask = arm_compute_save_reg_mask ();

  if (TARGET_IWMMXT)
    lrm_count = bit_count (saved_regs_mask);

  floats_offset = offsets->saved_args;

  for (reg = 0; reg <= LAST_ARM_REGNUM; reg++)
    if (saved_regs_mask & (1 << reg))
      floats_offset += 4;

  if (frame_pointer_needed)
    {

      int vfp_offset = offsets->frame;

      if (arm_fpu_arch == FPUTYPE_FPA_EMU2)
 {
   for (reg = LAST_FPA_REGNUM; reg >= FIRST_FPA_REGNUM; reg--)
     if (regs_ever_live[reg] && !call_used_regs[reg])
       {
  floats_offset += 12;
  asm_fprintf (f, "\tldfe\t%r, [%r, #-%d]\n",
        reg, FP_REGNUM, floats_offset - vfp_offset);
       }
 }
      else
 {
   start_reg = LAST_FPA_REGNUM;

   for (reg = LAST_FPA_REGNUM; reg >= FIRST_FPA_REGNUM; reg--)
     {
       if (regs_ever_live[reg] && !call_used_regs[reg])
  {
    floats_offset += 12;


    if (start_reg - reg == 3)
      {
        asm_fprintf (f, "\tlfm\t%r, 4, [%r, #-%d]\n",
              reg, FP_REGNUM, floats_offset - vfp_offset);
        start_reg = reg - 1;
      }
  }
       else
  {
    if (reg != start_reg)
      asm_fprintf (f, "\tlfm\t%r, %d, [%r, #-%d]\n",
     reg + 1, start_reg - reg,
     FP_REGNUM, floats_offset - vfp_offset);
    start_reg = reg - 1;
  }
     }


   if (reg != start_reg)
     asm_fprintf (f, "\tlfm\t%r, %d, [%r, #-%d]\n",
    reg + 1, start_reg - reg,
    FP_REGNUM, floats_offset - vfp_offset);
 }

      if (TARGET_HARD_FLOAT && TARGET_VFP)
 {
   int saved_size;



   saved_size = arm_get_vfp_saved_size ();

   if (saved_size > 0)
     {
       floats_offset += saved_size;
       asm_fprintf (f, "\tsub\t%r, %r, #%d\n", IP_REGNUM,
      FP_REGNUM, floats_offset - vfp_offset);
     }
   start_reg = FIRST_VFP_REGNUM;
   for (reg = FIRST_VFP_REGNUM; reg < LAST_VFP_REGNUM; reg += 2)
     {
       if ((!regs_ever_live[reg] || call_used_regs[reg])
    && (!regs_ever_live[reg + 1] || call_used_regs[reg + 1]))
  {
    if (start_reg != reg)
      arm_output_fldmx (f, IP_REGNUM,
          (start_reg - FIRST_VFP_REGNUM) / 2,
          (reg - start_reg) / 2);
    start_reg = reg + 2;
  }
     }
   if (start_reg != reg)
     arm_output_fldmx (f, IP_REGNUM,
         (start_reg - FIRST_VFP_REGNUM) / 2,
         (reg - start_reg) / 2);
 }

      if (TARGET_IWMMXT)
 {







   lrm_count += (lrm_count % 2 ? 2 : 1);

   for (reg = LAST_IWMMXT_REGNUM; reg >= FIRST_IWMMXT_REGNUM; reg--)
     if (regs_ever_live[reg] && !call_used_regs[reg])
       {
  asm_fprintf (f, "\twldrd\t%r, [%r, #-%d]\n",
        reg, FP_REGNUM, lrm_count * 4);
  lrm_count += 2;
       }
 }





      gcc_assert (saved_regs_mask & (1 << IP_REGNUM));
      saved_regs_mask &= ~ (1 << IP_REGNUM);
      saved_regs_mask |= (1 << SP_REGNUM);





      if (really_return
   && ARM_FUNC_TYPE (func_type) == ARM_FT_NORMAL
   && !current_function_calls_eh_return)


 saved_regs_mask &= ~ (1 << LR_REGNUM);
      else
 saved_regs_mask &= ~ (1 << PC_REGNUM);
      if (offsets->outgoing_args != (1 + (int) bit_count (saved_regs_mask))
   || current_function_calls_alloca)
 asm_fprintf (f, "\tsub\t%r, %r, #%d\n", SP_REGNUM, FP_REGNUM,
       4 * bit_count (saved_regs_mask));
      print_multi_reg (f, "ldmfd\t%r", SP_REGNUM, saved_regs_mask);

      if (IS_INTERRUPT (func_type))


 print_multi_reg (f, "ldmfd\t%r!", SP_REGNUM, 1 << IP_REGNUM);
    }
  else
    {

      if (offsets->outgoing_args != offsets->saved_regs)
 {
   operands[0] = operands[1] = stack_pointer_rtx;
   operands[2] = GEN_INT (offsets->outgoing_args - offsets->saved_regs);
   output_add_immediate (operands);
 }

      if (arm_fpu_arch == FPUTYPE_FPA_EMU2)
 {
   for (reg = FIRST_FPA_REGNUM; reg <= LAST_FPA_REGNUM; reg++)
     if (regs_ever_live[reg] && !call_used_regs[reg])
       asm_fprintf (f, "\tldfe\t%r, [%r], #12\n",
      reg, SP_REGNUM);
 }
      else
 {
   start_reg = FIRST_FPA_REGNUM;

   for (reg = FIRST_FPA_REGNUM; reg <= LAST_FPA_REGNUM; reg++)
     {
       if (regs_ever_live[reg] && !call_used_regs[reg])
  {
    if (reg - start_reg == 3)
      {
        asm_fprintf (f, "\tlfmfd\t%r, 4, [%r]!\n",
       start_reg, SP_REGNUM);
        start_reg = reg + 1;
      }
  }
       else
  {
    if (reg != start_reg)
      asm_fprintf (f, "\tlfmfd\t%r, %d, [%r]!\n",
     start_reg, reg - start_reg,
     SP_REGNUM);

    start_reg = reg + 1;
  }
     }


   if (reg != start_reg)
     asm_fprintf (f, "\tlfmfd\t%r, %d, [%r]!\n",
    start_reg, reg - start_reg, SP_REGNUM);
 }

      if (TARGET_HARD_FLOAT && TARGET_VFP)
 {
   start_reg = FIRST_VFP_REGNUM;
   for (reg = FIRST_VFP_REGNUM; reg < LAST_VFP_REGNUM; reg += 2)
     {
       if ((!regs_ever_live[reg] || call_used_regs[reg])
    && (!regs_ever_live[reg + 1] || call_used_regs[reg + 1]))
  {
    if (start_reg != reg)
      arm_output_fldmx (f, SP_REGNUM,
          (start_reg - FIRST_VFP_REGNUM) / 2,
          (reg - start_reg) / 2);
    start_reg = reg + 2;
  }
     }
   if (start_reg != reg)
     arm_output_fldmx (f, SP_REGNUM,
         (start_reg - FIRST_VFP_REGNUM) / 2,
         (reg - start_reg) / 2);
 }
      if (TARGET_IWMMXT)
 for (reg = FIRST_IWMMXT_REGNUM; reg <= LAST_IWMMXT_REGNUM; reg++)
   if (regs_ever_live[reg] && !call_used_regs[reg])
     asm_fprintf (f, "\twldrd\t%r, [%r], #8\n", reg, SP_REGNUM);


      if (ARM_FUNC_TYPE (func_type) == ARM_FT_NORMAL
   && really_return
   && current_function_pretend_args_size == 0
   && saved_regs_mask & (1 << LR_REGNUM)
   && !current_function_calls_eh_return)
 {
   saved_regs_mask &= ~ (1 << LR_REGNUM);
   saved_regs_mask |= (1 << PC_REGNUM);
 }



      if (saved_regs_mask == (1 << LR_REGNUM))
 {
   asm_fprintf (f, "\tldr\t%r, [%r], #4\n", LR_REGNUM, SP_REGNUM);
 }
      else if (saved_regs_mask)
 {
   if (saved_regs_mask & (1 << SP_REGNUM))




     print_multi_reg (f, "ldmfd\t%r", SP_REGNUM, saved_regs_mask);
   else
     print_multi_reg (f, "ldmfd\t%r!", SP_REGNUM, saved_regs_mask);
 }

      if (current_function_pretend_args_size)
 {

   operands[0] = operands[1] = stack_pointer_rtx;
   operands[2] = GEN_INT (current_function_pretend_args_size);
   output_add_immediate (operands);
 }
    }


  if (!really_return || saved_regs_mask & (1 << PC_REGNUM))
    return "";


  if (current_function_calls_eh_return)
    asm_fprintf (f, "\tadd\t%r, %r, %r\n", SP_REGNUM, SP_REGNUM,
   ARM_EH_STACKADJ_REGNUM);


  switch ((int) ARM_FUNC_TYPE (func_type))
    {
    case 128:
    case 130:
      asm_fprintf (f, "\tsubs\t%r, %r, #4\n", PC_REGNUM, LR_REGNUM);
      break;

    case 131:
      asm_fprintf (f, "\tmovs\t%r, %r\n", PC_REGNUM, LR_REGNUM);
      break;

    case 129:
      asm_fprintf (f, "\tbx\t%r\n", LR_REGNUM);
      break;

    default:
      if (arm_arch5 || arm_arch4t)
 asm_fprintf (f, "\tbx\t%r\n", LR_REGNUM);
      else
 asm_fprintf (f, "\tmov\t%r, %r\n", PC_REGNUM, LR_REGNUM);
      break;
    }

  return "";
}
