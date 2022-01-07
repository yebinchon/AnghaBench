
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
typedef int CORE_ADDR ;


 int IA64_BSP_REGNUM ;
 int extract_unsigned_integer (char*,int) ;
 int fprintf_unfiltered (int ,char*,int ,int ,int ) ;
 struct frame_id frame_id_build_special (int ,int ,int ) ;
 int frame_pc_unwind (struct frame_info*) ;
 int frame_unwind_register (struct frame_info*,int ,char*) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int paddr_nz (int ) ;
 int sp_regnum ;

__attribute__((used)) static struct frame_id
ia64_unwind_dummy_id (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  char buf[8];
  CORE_ADDR sp, bsp;

  frame_unwind_register (next_frame, sp_regnum, buf);
  sp = extract_unsigned_integer (buf, 8);

  frame_unwind_register (next_frame, IA64_BSP_REGNUM, buf);
  bsp = extract_unsigned_integer (buf, 8);

  if (gdbarch_debug >= 1)
    fprintf_unfiltered (gdb_stdlog,
   "dummy frame id: code 0x%s, stack 0x%s, special 0x%s\n",
   paddr_nz (frame_pc_unwind (next_frame)),
   paddr_nz (sp), paddr_nz (bsp));

  return frame_id_build_special (sp, frame_pc_unwind (next_frame), bsp);
}
