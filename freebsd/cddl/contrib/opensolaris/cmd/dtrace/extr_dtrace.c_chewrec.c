
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ dtrd_action; } ;
typedef TYPE_1__ dtrace_recdesc_t ;
struct TYPE_6__ {scalar_t__ dtpda_data; } ;
typedef TYPE_2__ dtrace_probedata_t ;
typedef scalar_t__ dtrace_actkind_t ;


 scalar_t__ DTRACEACT_EXIT ;
 int DTRACE_CONSUME_NEXT ;
 int DTRACE_CONSUME_THIS ;
 int g_quiet ;
 int g_status ;
 int oprintf (char*) ;

__attribute__((used)) static int
chewrec(const dtrace_probedata_t *data, const dtrace_recdesc_t *rec, void *arg)
{
 dtrace_actkind_t act;
 uintptr_t addr;

 if (rec == ((void*)0)) {




  if (!g_quiet)
   oprintf("\n");

  return (DTRACE_CONSUME_NEXT);
 }

 act = rec->dtrd_action;
 addr = (uintptr_t)data->dtpda_data;

 if (act == DTRACEACT_EXIT) {
  g_status = *((uint32_t *)addr);
  return (DTRACE_CONSUME_NEXT);
 }

 return (DTRACE_CONSUME_THIS);
}
