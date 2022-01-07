
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;


 int ARM_FPS_REGNUM ;
 int fputs (char*,int ) ;
 int print_fpu_flags (unsigned long) ;
 int printf (char*,char*,int) ;
 unsigned long read_register (int ) ;
 int stdout ;

__attribute__((used)) static void
arm_print_float_info (struct gdbarch *gdbarch, struct ui_file *file,
        struct frame_info *frame, const char *args)
{
  unsigned long status = read_register (ARM_FPS_REGNUM);
  int type;

  type = (status >> 24) & 127;
  printf ("%s FPU type %d\n",
   (status & (1 << 31)) ? "Hardware" : "Software",
   type);
  fputs ("mask: ", stdout);
  print_fpu_flags (status >> 16);
  fputs ("flags: ", stdout);
  print_fpu_flags (status);
}
