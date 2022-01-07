
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int udot_val ;
typedef int PTRACE_ARG3_TYPE ;


 long KERNEL_U_SIZE ;
 int PIDGET (int ) ;
 int PT_READ_U ;
 scalar_t__ errno ;
 int error (char*) ;
 int inferior_ptid ;
 int paddr (long) ;
 char* paddr_nz (long) ;
 int perror_with_name (char*) ;
 int printf_filtered (char*,...) ;
 int ptrace (int ,int ,int ,int ) ;
 int sprintf (char*,char*,char*) ;
 int target_has_execution ;

__attribute__((used)) static void
udot_info (char *dummy1, int dummy2)
{






  if (!target_has_execution)
    {
      error ("The program is not being run.");
    }







  error ("Don't know how large ``struct user'' is in this version of gdb.");
}
