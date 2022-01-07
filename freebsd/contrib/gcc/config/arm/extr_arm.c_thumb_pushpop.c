
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ ARM_EABI_UNWIND_TABLES ;
 int LAST_LO_REGNUM ;
 int LR_REGNUM ;
 int PC_REGNUM ;
 int SP_REGNUM ;
 scalar_t__ TARGET_BACKTRACE ;
 scalar_t__ TARGET_INTERWORK ;
 int asm_fprintf (int *,char*,int) ;
 scalar_t__ current_function_calls_eh_return ;
 char* dwarf2out_cfi_label () ;
 int dwarf2out_def_cfa (char*,int ,int) ;
 scalar_t__ dwarf2out_do_frame () ;
 int dwarf2out_reg_save (char*,int,int) ;
 int fprintf (int *,char*,...) ;
 int gcc_assert (unsigned long) ;
 int thumb_exit (int *,int) ;

__attribute__((used)) static void
thumb_pushpop (FILE *f, unsigned long mask, int push, int *cfa_offset,
        unsigned long real_regs)
{
  int regno;
  int lo_mask = mask & 0xFF;
  int pushed_words = 0;

  gcc_assert (mask);

  if (lo_mask == 0 && !push && (mask & (1 << PC_REGNUM)))
    {


      thumb_exit (f, -1);
      return;
    }

  if (ARM_EABI_UNWIND_TABLES && push)
    {
      fprintf (f, "\t.save\t{");
      for (regno = 0; regno < 15; regno++)
 {
   if (real_regs & (1 << regno))
     {
       if (real_regs & ((1 << regno) -1))
  fprintf (f, ", ");
       asm_fprintf (f, "%r", regno);
     }
 }
      fprintf (f, "}\n");
    }

  fprintf (f, "\t%s\t{", push ? "push" : "pop");


  for (regno = 0; regno <= LAST_LO_REGNUM; regno++, lo_mask >>= 1)
    {
      if (lo_mask & 1)
 {
   asm_fprintf (f, "%r", regno);

   if ((lo_mask & ~1) != 0)
     fprintf (f, ", ");

   pushed_words++;
 }
    }

  if (push && (mask & (1 << LR_REGNUM)))
    {

      if (mask & 0xFF)
 fprintf (f, ", ");

      asm_fprintf (f, "%r", LR_REGNUM);

      pushed_words++;
    }
  else if (!push && (mask & (1 << PC_REGNUM)))
    {

      if (TARGET_INTERWORK || TARGET_BACKTRACE
   || current_function_calls_eh_return)
 {


   fprintf (f, "}\n");

   thumb_exit (f, -1);

   return;
 }
      else
 {
   if (mask & 0xFF)
     fprintf (f, ", ");

   asm_fprintf (f, "%r", PC_REGNUM);
 }
    }

  fprintf (f, "}\n");

  if (push && pushed_words && dwarf2out_do_frame ())
    {
      char *l = dwarf2out_cfi_label ();
      int pushed_mask = real_regs;

      *cfa_offset += pushed_words * 4;
      dwarf2out_def_cfa (l, SP_REGNUM, *cfa_offset);

      pushed_words = 0;
      pushed_mask = real_regs;
      for (regno = 0; regno <= 14; regno++, pushed_mask >>= 1)
 {
   if (pushed_mask & 1)
     dwarf2out_reg_save (l, regno, 4 * pushed_words++ - *cfa_offset);
 }
    }
}
