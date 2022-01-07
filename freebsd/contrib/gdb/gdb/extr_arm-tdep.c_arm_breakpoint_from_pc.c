
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int thumb_breakpoint_size; unsigned char const* thumb_breakpoint; int arm_breakpoint_size; unsigned char const* arm_breakpoint; } ;
typedef int CORE_ADDR ;


 int UNMAKE_THUMB_ADDR (int ) ;
 scalar_t__ arm_pc_is_thumb (int ) ;
 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;

__attribute__((used)) static const unsigned char *
arm_breakpoint_from_pc (CORE_ADDR *pcptr, int *lenptr)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);

  if (arm_pc_is_thumb (*pcptr))
    {
      *pcptr = UNMAKE_THUMB_ADDR (*pcptr);
      *lenptr = tdep->thumb_breakpoint_size;
      return tdep->thumb_breakpoint;
    }
  else
    {
      *lenptr = tdep->arm_breakpoint_size;
      return tdep->arm_breakpoint;
    }
}
