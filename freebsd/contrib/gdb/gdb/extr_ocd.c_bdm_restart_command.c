
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCD_RESET_RUN ;
 int clear_proceed_status () ;
 int error (char*) ;
 int last_run_status ;
 int normal_stop () ;
 int ocd_desc ;
 int ocd_do_command (int ,int*,int*) ;
 int wait_for_inferior () ;

__attribute__((used)) static void
bdm_restart_command (char *args, int from_tty)
{
  int status, pktlen;

  if (!ocd_desc)
    error ("Not connected to OCD device.");

  ocd_do_command (OCD_RESET_RUN, &status, &pktlen);
  last_run_status = status;
  clear_proceed_status ();
  wait_for_inferior ();
  normal_stop ();
}
