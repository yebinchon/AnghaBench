
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;

__attribute__((used)) static void
default_skip_permanent_breakpoint (void)
{
  error ("The program is stopped at a permanent breakpoint, but GDB does not know\nhow to step past a permanent breakpoint on this architecture.  Try using\na command like `return' or `jump' to continue execution.");



}
