
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ddo_xlms; int ddo_rels; int ddo_enoffs; int ddo_offs; int ddo_args; int ddo_probes; int ddo_udata; int ddo_ldata; int ddo_strs; int ddo_secs; int ddo_xlexport; int ddo_xlimport; } ;
struct TYPE_6__ {TYPE_2__ dt_dof; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef TYPE_2__ dt_dof_t ;


 int dt_buf_destroy (TYPE_1__*,int *) ;
 int dt_free (TYPE_1__*,int ) ;

void
dt_dof_fini(dtrace_hdl_t *dtp)
{
 dt_dof_t *ddo = &dtp->dt_dof;

 dt_free(dtp, ddo->ddo_xlimport);
 dt_free(dtp, ddo->ddo_xlexport);

 dt_buf_destroy(dtp, &ddo->ddo_secs);
 dt_buf_destroy(dtp, &ddo->ddo_strs);
 dt_buf_destroy(dtp, &ddo->ddo_ldata);
 dt_buf_destroy(dtp, &ddo->ddo_udata);

 dt_buf_destroy(dtp, &ddo->ddo_probes);
 dt_buf_destroy(dtp, &ddo->ddo_args);
 dt_buf_destroy(dtp, &ddo->ddo_offs);
 dt_buf_destroy(dtp, &ddo->ddo_enoffs);
 dt_buf_destroy(dtp, &ddo->ddo_rels);

 dt_buf_destroy(dtp, &ddo->ddo_xlms);
}
