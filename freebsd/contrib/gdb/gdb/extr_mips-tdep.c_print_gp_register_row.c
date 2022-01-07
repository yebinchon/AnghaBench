
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
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 char* REGISTER_NAME (int) ;
 scalar_t__ TARGET_BYTE_ORDER ;
 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_FLT ;
 struct gdbarch* current_gdbarch ;
 int error (char*,int,char*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int frame_register_read (struct frame_info*,int,char*) ;
 int gdbarch_register_type (struct gdbarch*,int) ;
 struct gdbarch* get_frame_arch (struct frame_info*) ;
 int mips_regsize (struct gdbarch*) ;
 int printf_filtered (char*) ;
 int register_size (struct gdbarch*,int) ;

__attribute__((used)) static int
print_gp_register_row (struct ui_file *file, struct frame_info *frame,
         int start_regnum)
{
  struct gdbarch *gdbarch = get_frame_arch (frame);

  char raw_buffer[MAX_REGISTER_SIZE];
  int ncols = (mips_regsize (gdbarch) == 8 ? 4 : 8);
  int col, byte;
  int regnum;


  fprintf_filtered (file, "     ");
  for (col = 0, regnum = start_regnum;
       col < ncols && regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
    {
      if (*REGISTER_NAME (regnum) == '\0')
 continue;
      if (TYPE_CODE (gdbarch_register_type (gdbarch, regnum)) ==
   TYPE_CODE_FLT)
 break;
      fprintf_filtered (file,
   mips_regsize (current_gdbarch) == 8 ? "%17s" : "%9s",
   REGISTER_NAME (regnum));
      col++;
    }

  if ((start_regnum % NUM_REGS) < MIPS_NUMREGS)
    fprintf_filtered (file, "\n R%-4d", start_regnum % NUM_REGS);
  else
    fprintf_filtered (file, "\n      ");


  for (col = 0, regnum = start_regnum;
       col < ncols && regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
    {
      if (*REGISTER_NAME (regnum) == '\0')
 continue;
      if (TYPE_CODE (gdbarch_register_type (gdbarch, regnum)) ==
   TYPE_CODE_FLT)
 break;

      if (!frame_register_read (frame, regnum, raw_buffer))
 error ("can't read register %d (%s)", regnum, REGISTER_NAME (regnum));

      for (byte = 0;
    byte < (mips_regsize (current_gdbarch)
     - register_size (current_gdbarch, regnum)); byte++)
 printf_filtered ("  ");

      if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
 for (byte =
      register_size (current_gdbarch,
       regnum) - register_size (current_gdbarch, regnum);
      byte < register_size (current_gdbarch, regnum); byte++)
   fprintf_filtered (file, "%02x", (unsigned char) raw_buffer[byte]);
      else
 for (byte = register_size (current_gdbarch, regnum) - 1;
      byte >= 0; byte--)
   fprintf_filtered (file, "%02x", (unsigned char) raw_buffer[byte]);
      fprintf_filtered (file, " ");
      col++;
    }
  if (col > 0)
    fprintf_filtered (file, "\n");

  return regnum;
}
