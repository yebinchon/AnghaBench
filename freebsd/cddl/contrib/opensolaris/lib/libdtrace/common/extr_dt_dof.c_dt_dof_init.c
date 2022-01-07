
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ddo_xlms; int ddo_rels; int ddo_enoffs; int ddo_offs; int ddo_args; int ddo_probes; int ddo_udata; int ddo_ldata; int ddo_strs; int ddo_secs; int * ddo_xlexport; int * ddo_xlimport; int ddo_strsec; scalar_t__ ddo_nsecs; TYPE_1__* ddo_hdl; } ;
struct TYPE_5__ {TYPE_2__ dt_dof; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef TYPE_2__ dt_dof_t ;


 int DOF_SECIDX_NONE ;
 int dt_buf_create (TYPE_1__*,int *,char*,int ) ;

void
dt_dof_init(dtrace_hdl_t *dtp)
{
 dt_dof_t *ddo = &dtp->dt_dof;

 ddo->ddo_hdl = dtp;
 ddo->ddo_nsecs = 0;
 ddo->ddo_strsec = DOF_SECIDX_NONE;
 ddo->ddo_xlimport = ((void*)0);
 ddo->ddo_xlexport = ((void*)0);

 dt_buf_create(dtp, &ddo->ddo_secs, "section headers", 0);
 dt_buf_create(dtp, &ddo->ddo_strs, "string table", 0);
 dt_buf_create(dtp, &ddo->ddo_ldata, "loadable data", 0);
 dt_buf_create(dtp, &ddo->ddo_udata, "unloadable data", 0);

 dt_buf_create(dtp, &ddo->ddo_probes, "probe data", 0);
 dt_buf_create(dtp, &ddo->ddo_args, "probe args", 0);
 dt_buf_create(dtp, &ddo->ddo_offs, "probe offs", 0);
 dt_buf_create(dtp, &ddo->ddo_enoffs, "probe is-enabled offs", 0);
 dt_buf_create(dtp, &ddo->ddo_rels, "probe rels", 0);

 dt_buf_create(dtp, &ddo->ddo_xlms, "xlate members", 0);
}
