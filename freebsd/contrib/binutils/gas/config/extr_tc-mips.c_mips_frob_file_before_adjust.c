
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ECOFF_DEBUGGING ;
 int ecoff_debugging_seen ;
 int flag_keep_locals ;
 scalar_t__ mips_debug ;

void
mips_frob_file_before_adjust (void)
{

  if (ECOFF_DEBUGGING
      && mips_debug != 0
      && ! ecoff_debugging_seen)
    flag_keep_locals = 1;

}
