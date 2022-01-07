
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;


 scalar_t__ BFD_ENDIAN_BIG ;
 int MAX_REGISTER_SIZE ;
 int MIPS_NUMREGS ;
 int REGISTER_NAME (int) ;
 scalar_t__ TARGET_BYTE_ORDER ;
 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_FLT ;
 int current_gdbarch ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (int ,struct ui_file*) ;
 int frame_register_read (struct frame_info*,int,char*) ;
 int gdbarch_register_type (struct gdbarch*,int) ;
 struct gdbarch* get_frame_arch (struct frame_info*) ;
 int mips_print_fp_register (struct ui_file*,struct frame_info*,int) ;
 int print_scalar_formatted (char*,int ,char,int ,struct ui_file*) ;
 int register_size (int ,int) ;

__attribute__((used)) static void
mips_print_register (struct ui_file *file, struct frame_info *frame,
       int regnum, int all)
{
  struct gdbarch *gdbarch = get_frame_arch (frame);
  char raw_buffer[MAX_REGISTER_SIZE];
  int offset;

  if (TYPE_CODE (gdbarch_register_type (gdbarch, regnum)) == TYPE_CODE_FLT)
    {
      mips_print_fp_register (file, frame, regnum);
      return;
    }


  if (!frame_register_read (frame, regnum, raw_buffer))
    {
      fprintf_filtered (file, "%s: [Invalid]", REGISTER_NAME (regnum));
      return;
    }

  fputs_filtered (REGISTER_NAME (regnum), file);





  if (regnum < MIPS_NUMREGS)
    fprintf_filtered (file, "(r%d): ", regnum);
  else
    fprintf_filtered (file, ": ");

  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    offset =
      register_size (current_gdbarch,
       regnum) - register_size (current_gdbarch, regnum);
  else
    offset = 0;

  print_scalar_formatted (raw_buffer + offset,
     gdbarch_register_type (gdbarch, regnum), 'x', 0,
     file);
}
