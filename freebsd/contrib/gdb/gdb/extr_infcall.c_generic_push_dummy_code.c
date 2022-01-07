
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef int CORE_ADDR ;


 int gdb_assert (int ) ;
 int gdbarch_breakpoint_from_pc (struct gdbarch*,int *,int*) ;
 int gdbarch_frame_align (struct gdbarch*,int ) ;
 int gdbarch_frame_align_p (struct gdbarch*) ;
 scalar_t__ gdbarch_inner_than (struct gdbarch*,int,int) ;

__attribute__((used)) static CORE_ADDR
generic_push_dummy_code (struct gdbarch *gdbarch,
    CORE_ADDR sp, CORE_ADDR funaddr, int using_gcc,
    struct value **args, int nargs,
    struct type *value_type,
    CORE_ADDR *real_pc, CORE_ADDR *bp_addr)
{


  int bplen;

  gdb_assert (gdbarch_frame_align_p (gdbarch));


  sp = gdbarch_frame_align (gdbarch, sp);


  if (gdbarch_inner_than (gdbarch, 1, 2))
    {
      CORE_ADDR bppc = sp;
      gdbarch_breakpoint_from_pc (gdbarch, &bppc, &bplen);
      sp = gdbarch_frame_align (gdbarch, sp - bplen);
      (*bp_addr) = sp;

    }
  else
    {
      (*bp_addr) = sp;
      gdbarch_breakpoint_from_pc (gdbarch, bp_addr, &bplen);
      sp = gdbarch_frame_align (gdbarch, sp + bplen);
    }

  (*real_pc) = funaddr;
  return sp;
}
