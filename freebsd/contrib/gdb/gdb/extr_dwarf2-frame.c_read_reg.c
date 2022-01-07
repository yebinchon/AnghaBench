
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int DWARF2_REG_TO_REGNUM (int) ;
 scalar_t__ alloca (int ) ;
 int builtin_type_void_data_ptr ;
 int extract_typed_address (char*,int ) ;
 int frame_unwind_register (struct frame_info*,int,char*) ;
 struct gdbarch* get_frame_arch (struct frame_info*) ;
 int register_size (struct gdbarch*,int) ;

__attribute__((used)) static CORE_ADDR
read_reg (void *baton, int reg)
{
  struct frame_info *next_frame = (struct frame_info *) baton;
  struct gdbarch *gdbarch = get_frame_arch (next_frame);
  int regnum;
  char *buf;

  regnum = DWARF2_REG_TO_REGNUM (reg);

  buf = (char *) alloca (register_size (gdbarch, regnum));
  frame_unwind_register (next_frame, regnum, buf);
  return extract_typed_address (buf, builtin_type_void_data_ptr);
}
