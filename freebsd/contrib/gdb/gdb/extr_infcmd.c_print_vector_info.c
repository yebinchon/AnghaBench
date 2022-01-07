
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;


 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 int * deprecated_selected_frame ;
 int error (char*) ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int gdbarch_print_registers_info (struct gdbarch*,struct ui_file*,struct frame_info*,int,int) ;
 int gdbarch_print_vector_info (struct gdbarch*,struct ui_file*,struct frame_info*,char const*) ;
 scalar_t__ gdbarch_print_vector_info_p (struct gdbarch*) ;
 scalar_t__ gdbarch_register_reggroup_p (struct gdbarch*,int,int ) ;
 int target_has_registers ;
 int vector_reggroup ;

__attribute__((used)) static void
print_vector_info (struct gdbarch *gdbarch, struct ui_file *file,
     struct frame_info *frame, const char *args)
{
  if (!target_has_registers)
    error ("The program has no registers now.");
  if (deprecated_selected_frame == ((void*)0))
    error ("No selected frame.");

  if (gdbarch_print_vector_info_p (gdbarch))
    gdbarch_print_vector_info (gdbarch, file, frame, args);
  else
    {
      int regnum;
      int printed_something = 0;

      for (regnum = 0; regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
 {
   if (gdbarch_register_reggroup_p (gdbarch, regnum, vector_reggroup))
     {
       printed_something = 1;
       gdbarch_print_registers_info (gdbarch, file, frame, regnum, 1);
     }
 }
      if (!printed_something)
 fprintf_filtered (file, "No vector information\n");
    }
}
