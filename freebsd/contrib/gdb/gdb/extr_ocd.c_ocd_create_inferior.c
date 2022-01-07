
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TARGET_SIGNAL_0 ;
 int bfd_get_start_address (int ) ;
 int clear_proceed_status () ;
 int error (char*) ;
 int exec_bfd ;
 int proceed (int ,int ,int ) ;

void
ocd_create_inferior (char *exec_file, char *args, char **env)
{
  if (args && (*args != '\000'))
    error ("Args are not supported by BDM.");

  clear_proceed_status ();
  proceed (bfd_get_start_address (exec_bfd), TARGET_SIGNAL_0, 0);
}
