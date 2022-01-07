
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ARG_REGISTER (int) ;
 int ARM_EH_STACKADJ_REGNUM ;
 int ARM_HARD_FRAME_POINTER_REGNUM ;
 int DECL_MODE (int ) ;
 int DECL_RESULT (int ) ;
 int FALSE ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_SIZE (int) ;
 int IP_REGNUM ;
 int LAST_ARG_REGNUM ;
 int LR_REGNUM ;
 int PC_REGNUM ;
 int SP_REGNUM ;
 scalar_t__ TARGET_BACKTRACE ;
 int TARGET_INTERWORK ;
 int TRUE ;
 int VOIDmode ;
 int asm_fprintf (int *,char*,int,...) ;
 scalar_t__ current_function_calls_eh_return ;
 int current_function_decl ;
 scalar_t__ current_function_return_rtx ;
 int is_called_in_ARM_mode (int ) ;
 int number_of_first_bit_set (unsigned int) ;
 int thumb_pushpop (int *,unsigned int,int,int *,unsigned int) ;

__attribute__((used)) static void
thumb_exit (FILE *f, int reg_containing_return_addr)
{
  unsigned regs_available_for_popping;
  unsigned regs_to_pop;
  int pops_needed;
  unsigned available;
  unsigned required;
  int mode;
  int size;
  int restore_a4 = FALSE;


  regs_to_pop = 0;
  pops_needed = 0;

  if (reg_containing_return_addr == -1)
    {
      regs_to_pop |= 1 << LR_REGNUM;
      ++pops_needed;
    }

  if (TARGET_BACKTRACE)
    {

      regs_to_pop |= (1 << ARM_HARD_FRAME_POINTER_REGNUM) | (1 << SP_REGNUM);
      pops_needed += 2;
    }



  if (pops_needed == 0)
    {
      if (current_function_calls_eh_return)
 asm_fprintf (f, "\tadd\t%r, %r\n", SP_REGNUM, ARM_EH_STACKADJ_REGNUM);

      asm_fprintf (f, "\tbx\t%r\n", reg_containing_return_addr);
      return;
    }



  else if (!TARGET_INTERWORK
    && !TARGET_BACKTRACE
    && !is_called_in_ARM_mode (current_function_decl)
    && !current_function_calls_eh_return)
    {
      asm_fprintf (f, "\tpop\t{%r}\n", PC_REGNUM);
      return;
    }


  regs_available_for_popping = 0;



  if (current_function_calls_eh_return)
    size = 12;
  else
    {






      if (current_function_return_rtx != 0)
 mode = GET_MODE (current_function_return_rtx);
      else
 mode = DECL_MODE (DECL_RESULT (current_function_decl));

      size = GET_MODE_SIZE (mode);

      if (size == 0)
 {



   if (mode == VOIDmode)
     regs_available_for_popping =
       (1 << ARG_REGISTER (1))
       | (1 << ARG_REGISTER (2))
       | (1 << ARG_REGISTER (3));
   else
     regs_available_for_popping =
       (1 << ARG_REGISTER (2))
       | (1 << ARG_REGISTER (3));
 }
      else if (size <= 4)
 regs_available_for_popping =
   (1 << ARG_REGISTER (2))
   | (1 << ARG_REGISTER (3));
      else if (size <= 8)
 regs_available_for_popping =
   (1 << ARG_REGISTER (3));
    }


  for (available = regs_available_for_popping,
       required = regs_to_pop;
       required != 0 && available != 0;
       available &= ~(available & - available),
       required &= ~(required & - required))
    -- pops_needed;


  if (available > 0)
    regs_available_for_popping &= ~available;



  else if (pops_needed)
    {


      if (regs_available_for_popping == 0
   && reg_containing_return_addr == LAST_ARG_REGNUM)
 {
   asm_fprintf (f, "\tmov\t%r, %r\n", LR_REGNUM, LAST_ARG_REGNUM);
   reg_containing_return_addr = LR_REGNUM;
 }
      else if (size > 12)
 {


   restore_a4 = TRUE;

   asm_fprintf (f, "\tmov\t%r, %r\n",IP_REGNUM, LAST_ARG_REGNUM);
 }

      if (reg_containing_return_addr != LAST_ARG_REGNUM)
 {

   regs_available_for_popping |= 1 << LAST_ARG_REGNUM;

   --pops_needed;
 }
    }


  thumb_pushpop (f, regs_available_for_popping, FALSE, ((void*)0),
   regs_available_for_popping);


  if (reg_containing_return_addr == -1)
    {

      regs_to_pop &= ~(1 << LR_REGNUM);

      reg_containing_return_addr =
 number_of_first_bit_set (regs_available_for_popping);



      regs_available_for_popping &= ~(1 << reg_containing_return_addr);
    }


  if (regs_available_for_popping)
    {
      int frame_pointer;


      frame_pointer = number_of_first_bit_set (regs_available_for_popping);


      asm_fprintf (f, "\tmov\t%r, %r\n",
     ARM_HARD_FRAME_POINTER_REGNUM, frame_pointer);


      regs_available_for_popping &= ~(1 << frame_pointer);
      regs_to_pop &= ~(1 << ARM_HARD_FRAME_POINTER_REGNUM);

      if (regs_available_for_popping)
 {
   int stack_pointer;



   stack_pointer = number_of_first_bit_set (regs_available_for_popping);


   asm_fprintf (f, "\tmov\t%r, %r\n", SP_REGNUM, stack_pointer);
 }
      else
 {



   regs_available_for_popping |= (1 << frame_pointer);
 }
    }





  if (regs_available_for_popping == 0 && pops_needed > 0)
    {
      regs_available_for_popping |= 1 << reg_containing_return_addr;

      asm_fprintf (f, "\tmov\t%r, %r\n", LR_REGNUM,
     reg_containing_return_addr);

      reg_containing_return_addr = LR_REGNUM;
    }



  if (pops_needed > 0)
    {
      int popped_into;
      int move_to;

      thumb_pushpop (f, regs_available_for_popping, FALSE, ((void*)0),
       regs_available_for_popping);



      popped_into = number_of_first_bit_set (regs_available_for_popping);
      move_to = number_of_first_bit_set (regs_to_pop);

      asm_fprintf (f, "\tmov\t%r, %r\n", move_to, popped_into);

      regs_to_pop &= ~(1 << move_to);

      --pops_needed;
    }



  if (pops_needed > 0)
    {
      int popped_into;

      thumb_pushpop (f, regs_available_for_popping, FALSE, ((void*)0),
       regs_available_for_popping);

      popped_into = number_of_first_bit_set (regs_available_for_popping);

      asm_fprintf (f, "\tmov\t%r, %r\n", SP_REGNUM, popped_into);




    }


  if (restore_a4)
    {
      if (reg_containing_return_addr != LR_REGNUM)
 {
   asm_fprintf (f, "\tmov\t%r, %r\n", LR_REGNUM, LAST_ARG_REGNUM);
   reg_containing_return_addr = LR_REGNUM;
 }

      asm_fprintf (f, "\tmov\t%r, %r\n", LAST_ARG_REGNUM, IP_REGNUM);
    }

  if (current_function_calls_eh_return)
    asm_fprintf (f, "\tadd\t%r, %r\n", SP_REGNUM, ARM_EH_STACKADJ_REGNUM);


  asm_fprintf (f, "\tbx\t%r\n", reg_containing_return_addr);
}
