
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup_client () ;
 int inferior_ptid ;
 int normal_stop () ;
 int null_ptid ;
 scalar_t__ prog_has_started ;

__attribute__((used)) static void
go32_stop (void)
{
  normal_stop ();
  cleanup_client ();
  inferior_ptid = null_ptid;
  prog_has_started = 0;
}
