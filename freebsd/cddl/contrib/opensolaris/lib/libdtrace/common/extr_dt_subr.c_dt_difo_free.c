
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_4__ {struct TYPE_4__* dtdo_xlmtab; struct TYPE_4__* dtdo_ureltab; struct TYPE_4__* dtdo_kreltab; struct TYPE_4__* dtdo_vartab; struct TYPE_4__* dtdo_strtab; struct TYPE_4__* dtdo_inttab; struct TYPE_4__* dtdo_buf; } ;
typedef TYPE_1__ dtrace_difo_t ;


 int dt_free (int *,TYPE_1__*) ;

void
dt_difo_free(dtrace_hdl_t *dtp, dtrace_difo_t *dp)
{
 if (dp == ((void*)0))
  return;

 dt_free(dtp, dp->dtdo_buf);
 dt_free(dtp, dp->dtdo_inttab);
 dt_free(dtp, dp->dtdo_strtab);
 dt_free(dtp, dp->dtdo_vartab);
 dt_free(dtp, dp->dtdo_kreltab);
 dt_free(dtp, dp->dtdo_ureltab);
 dt_free(dtp, dp->dtdo_xlmtab);

 dt_free(dtp, dp);
}
