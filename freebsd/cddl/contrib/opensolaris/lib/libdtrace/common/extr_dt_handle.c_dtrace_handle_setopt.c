
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* dt_setoptarg; int * dt_setopthdlr; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int dtrace_handle_setopt_f ;


 int EINVAL ;
 int dt_set_errno (TYPE_1__*,int ) ;

int
dtrace_handle_setopt(dtrace_hdl_t *dtp, dtrace_handle_setopt_f *hdlr,
    void *arg)
{
 if (hdlr == ((void*)0))
  return (dt_set_errno(dtp, EINVAL));

 dtp->dt_setopthdlr = hdlr;
 dtp->dt_setoptarg = arg;

 return (0);
}
