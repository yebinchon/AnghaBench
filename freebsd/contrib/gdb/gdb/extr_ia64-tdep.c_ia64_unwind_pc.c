
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int IA64_IP_REGNUM ;
 int IA64_PSR_REGNUM ;
 int extract_unsigned_integer (char*,int) ;
 int frame_unwind_register (struct frame_info*,int ,char*) ;

__attribute__((used)) static CORE_ADDR
ia64_unwind_pc (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  char buf[8];
  CORE_ADDR ip, psr, pc;

  frame_unwind_register (next_frame, IA64_IP_REGNUM, buf);
  ip = extract_unsigned_integer (buf, 8);
  frame_unwind_register (next_frame, IA64_PSR_REGNUM, buf);
  psr = extract_unsigned_integer (buf, 8);

  pc = (ip & ~0xf) | ((psr >> 41) & 3);
  return pc;
}
