
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCD_RESET ;
 int dcache_invalidate (int ) ;
 int error (char*) ;
 int ocd_desc ;
 int ocd_do_command (int ,int*,int*) ;
 int registers_changed () ;
 int target_dcache ;

__attribute__((used)) static void
bdm_reset_command (char *args, int from_tty)
{
  int status, pktlen;

  if (!ocd_desc)
    error ("Not connected to OCD device.");

  ocd_do_command (OCD_RESET, &status, &pktlen);
  dcache_invalidate (target_dcache);
  registers_changed ();
}
