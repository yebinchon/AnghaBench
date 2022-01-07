
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_longjmp_breakpoint () ;

__attribute__((used)) static void
disable_longjmp_breakpoint_cleanup (void *ignore)
{
  disable_longjmp_breakpoint ();
}
