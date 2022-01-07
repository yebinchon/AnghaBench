
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct frame_info {int dummy; } ;


 int fprintf_filtered (struct ui_file*,char*) ;
 int mips_print_fp_register (struct ui_file*,struct frame_info*,int) ;

__attribute__((used)) static int
print_fp_register_row (struct ui_file *file, struct frame_info *frame,
         int regnum)
{
  fprintf_filtered (file, " ");
  mips_print_fp_register (file, frame, regnum);
  fprintf_filtered (file, "\n");
  return regnum + 1;
}
