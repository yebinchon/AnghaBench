
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;


 scalar_t__ MIPS_NUMREGS ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 char* REGISTER_NAME (int) ;
 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_FLT ;
 int error (char*) ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int gdb_assert (int) ;
 int gdbarch_register_type (struct gdbarch*,int) ;
 int mips_print_register (struct ui_file*,struct frame_info*,int,int ) ;
 int print_fp_register_row (struct ui_file*,struct frame_info*,int) ;
 int print_gp_register_row (struct ui_file*,struct frame_info*,int) ;

__attribute__((used)) static void
mips_print_registers_info (struct gdbarch *gdbarch, struct ui_file *file,
      struct frame_info *frame, int regnum, int all)
{
  if (regnum != -1)
    {
      gdb_assert (regnum >= NUM_REGS);
      if (*(REGISTER_NAME (regnum)) == '\0')
 error ("Not a valid register for the current processor type");

      mips_print_register (file, frame, regnum, 0);
      fprintf_filtered (file, "\n");
    }
  else

    {
      regnum = NUM_REGS;
      while (regnum < NUM_REGS + NUM_PSEUDO_REGS)
 {
   if (TYPE_CODE (gdbarch_register_type (gdbarch, regnum)) ==
       TYPE_CODE_FLT)
     {
       if (all)
  regnum = print_fp_register_row (file, frame, regnum);
       else
  regnum += MIPS_NUMREGS;
     }
   else
     regnum = print_gp_register_row (file, frame, regnum);
 }
    }
}
