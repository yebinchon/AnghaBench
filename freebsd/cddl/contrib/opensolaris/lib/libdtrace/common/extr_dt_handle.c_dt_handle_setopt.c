
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_setoptdata_t ;
struct TYPE_4__ {scalar_t__ (* dt_setopthdlr ) (int *,void*) ;void* dt_setoptarg; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 scalar_t__ DTRACE_HANDLE_ABORT ;
 int EDT_DIRABORT ;
 int dt_set_errno (TYPE_1__*,int ) ;
 scalar_t__ stub1 (int *,void*) ;

int
dt_handle_setopt(dtrace_hdl_t *dtp, dtrace_setoptdata_t *data)
{
 void *arg = dtp->dt_setoptarg;

 if (dtp->dt_setopthdlr == ((void*)0))
  return (0);

 if ((*dtp->dt_setopthdlr)(data, arg) == DTRACE_HANDLE_ABORT)
  return (dt_set_errno(dtp, EDT_DIRABORT));

 return (0);
}
