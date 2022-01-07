
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_symtab_users () ;
 int generic_load (char*,int) ;
 int inferior_ptid ;
 int null_ptid ;

void
ocd_load (char *args, int from_tty)
{
  generic_load (args, from_tty);

  inferior_ptid = null_ptid;







  clear_symtab_users ();
}
