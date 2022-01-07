
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MEP_VLIW64 ;
 int mep_check_parallel32_scheduling () ;
 int mep_check_parallel64_scheduling () ;

__attribute__((used)) static void
mep_check_parallel_scheduling (void)
{


  if (MEP_VLIW64)
    mep_check_parallel64_scheduling ();
  else
    mep_check_parallel32_scheduling ();
}
