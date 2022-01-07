
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inferior_status {int stop_registers; int registers; int stop_bpstat; } ;


 int bpstat_clear (int *) ;
 int regcache_xfree (int ) ;
 int xfree (struct inferior_status*) ;

void
discard_inferior_status (struct inferior_status *inf_status)
{

  bpstat_clear (&inf_status->stop_bpstat);
  regcache_xfree (inf_status->registers);
  regcache_xfree (inf_status->stop_registers);
  xfree (inf_status);
}
