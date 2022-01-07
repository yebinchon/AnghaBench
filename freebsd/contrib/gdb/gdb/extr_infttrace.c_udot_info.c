
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int udot_val ;
typedef int TTRACE_ARG_TYPE ;


 int KERNEL_U_SIZE ;
 int PIDGET (int ) ;
 int TT_LWP_RUREGS ;
 int TT_NIL ;
 int call_ttrace (int ,int ,int ,int ,int ) ;
 scalar_t__ errno ;
 int error (char*) ;
 int inferior_ptid ;
 int perror_with_name (char*) ;
 int printf_filtered (char*,...) ;
 int sprintf (char*,char*,int) ;
 int target_has_execution ;

__attribute__((used)) static void
udot_info (void)
{
  int udot_off;
  int udot_val;
  char mess[128];

  if (!target_has_execution)
    {
      error ("The program is not being run.");
    }







  error ("Don't know how large ``struct user'' is in this version of gdb.");
}
