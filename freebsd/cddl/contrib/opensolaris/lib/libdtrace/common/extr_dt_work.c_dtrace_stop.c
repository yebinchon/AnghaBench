
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dt_statusgen; int dt_stopped; int * dt_status; int dt_endedon; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int DTRACEIOC_STATUS ;
 int DTRACEIOC_STOP ;
 int dt_handle_status (TYPE_1__*,int *,int *) ;
 int dt_ioctl (TYPE_1__*,int ,int *) ;
 int dt_set_errno (TYPE_1__*,int ) ;
 int errno ;

int
dtrace_stop(dtrace_hdl_t *dtp)
{
 int gen = dtp->dt_statusgen;

 if (dtp->dt_stopped)
  return (0);

 if (dt_ioctl(dtp, DTRACEIOC_STOP, &dtp->dt_endedon) == -1)
  return (dt_set_errno(dtp, errno));

 dtp->dt_stopped = 1;




 if (dt_ioctl(dtp, DTRACEIOC_STATUS, &dtp->dt_status[gen]) == -1)
  return (dt_set_errno(dtp, errno));

 if (dt_handle_status(dtp, &dtp->dt_status[gen ^ 1],
     &dtp->dt_status[gen]) == -1)
  return (-1);

 return (0);
}
