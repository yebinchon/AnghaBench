
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* dt_droparg; int * dt_drophdlr; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int dtrace_handle_drop_f ;


 int EALREADY ;
 int dt_set_errno (TYPE_1__*,int ) ;

int
dtrace_handle_drop(dtrace_hdl_t *dtp, dtrace_handle_drop_f *hdlr, void *arg)
{
 if (dtp->dt_drophdlr != ((void*)0))
  return (dt_set_errno(dtp, EALREADY));

 dtp->dt_drophdlr = hdlr;
 dtp->dt_droparg = arg;

 return (0);
}
