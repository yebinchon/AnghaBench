
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;


 scalar_t__ DEPRECATED_FP_REGNUM ;
 scalar_t__ DEPRECATED_FRAME_CHAIN_P () ;
 scalar_t__ DEPRECATED_INIT_EXTRA_FRAME_INFO_P () ;
 scalar_t__ DEPRECATED_INIT_FRAME_PC_FIRST_P () ;
 scalar_t__ DEPRECATED_INIT_FRAME_PC_P () ;
 scalar_t__ DEPRECATED_TARGET_READ_FP_P () ;
 scalar_t__ gdbarch_unwind_dummy_id_p (struct gdbarch*) ;

int
legacy_frame_p (struct gdbarch *current_gdbarch)
{
  if (DEPRECATED_INIT_FRAME_PC_P ()
      || DEPRECATED_INIT_FRAME_PC_FIRST_P ()
      || DEPRECATED_INIT_EXTRA_FRAME_INFO_P ()
      || DEPRECATED_FRAME_CHAIN_P ())

    return 1;
  if (gdbarch_unwind_dummy_id_p (current_gdbarch))


    return 0;
  if (DEPRECATED_TARGET_READ_FP_P ()
      || DEPRECATED_FP_REGNUM >= 0)




    return 1;




  return 0;
}
