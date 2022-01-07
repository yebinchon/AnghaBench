
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* dt_bufarg; int * dt_bufhdlr; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int dtrace_handle_buffered_f ;


 int EALREADY ;
 int EINVAL ;
 int dt_set_errno (TYPE_1__*,int ) ;

int
dtrace_handle_buffered(dtrace_hdl_t *dtp, dtrace_handle_buffered_f *hdlr,
    void *arg)
{
 if (dtp->dt_bufhdlr != ((void*)0))
  return (dt_set_errno(dtp, EALREADY));

 if (hdlr == ((void*)0))
  return (dt_set_errno(dtp, EINVAL));

 dtp->dt_bufhdlr = hdlr;
 dtp->dt_bufarg = arg;

 return (0);
}
