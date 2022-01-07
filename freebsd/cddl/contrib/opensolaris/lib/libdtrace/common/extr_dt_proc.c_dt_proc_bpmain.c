
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_4__ {scalar_t__ dpr_pid; } ;
typedef TYPE_1__ dt_proc_t ;


 int DT_PROC_STOP_MAIN ;
 int dt_dprintf (char*,int,char const*) ;
 int dt_proc_stop (TYPE_1__*,int ) ;

__attribute__((used)) static void
dt_proc_bpmain(dtrace_hdl_t *dtp, dt_proc_t *dpr, const char *fname)
{
 dt_dprintf("pid %d: breakpoint at %s()\n", (int)dpr->dpr_pid, fname);
 dt_proc_stop(dpr, DT_PROC_STOP_MAIN);
}
