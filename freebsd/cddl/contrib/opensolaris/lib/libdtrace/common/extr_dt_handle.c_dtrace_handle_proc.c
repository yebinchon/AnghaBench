
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* dt_procarg; int * dt_prochdlr; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int dtrace_handle_proc_f ;


 int EALREADY ;
 int dt_set_errno (TYPE_1__*,int ) ;

int
dtrace_handle_proc(dtrace_hdl_t *dtp, dtrace_handle_proc_f *hdlr, void *arg)
{
 if (dtp->dt_prochdlr != ((void*)0))
  return (dt_set_errno(dtp, EALREADY));

 dtp->dt_prochdlr = hdlr;
 dtp->dt_procarg = arg;

 return (0);
}
