
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int dtrace_recdesc_t ;
struct TYPE_9__ {int dt_errno; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_10__ {int dtagd_flags; scalar_t__ dtagd_nrecs; int * dtagd_rec; } ;
typedef TYPE_2__ dtrace_aggdesc_t ;
struct TYPE_11__ {TYPE_2__* dtada_desc; int dtada_size; int dtada_data; } ;
typedef TYPE_3__ dtrace_aggdata_t ;
struct TYPE_12__ {int pfw_err; TYPE_6__* pfw_argv; int pfw_fp; } ;
typedef TYPE_4__ dt_pfwalk_t ;
struct TYPE_13__ {TYPE_1__* pfv_dtp; } ;


 int DTRACE_AGD_PRINTED ;
 int dt_printf_format (TYPE_1__*,int ,TYPE_6__*,int const*,scalar_t__,int ,int ,TYPE_3__ const**,int) ;

__attribute__((used)) static int
dt_fprintas(const dtrace_aggdata_t **aggsdata, int naggvars, void *arg)
{
 const dtrace_aggdata_t *aggdata = aggsdata[0];
 const dtrace_aggdesc_t *agg = aggdata->dtada_desc;
 const dtrace_recdesc_t *rec = &agg->dtagd_rec[1];
 uint_t nrecs = agg->dtagd_nrecs - 1;
 dt_pfwalk_t *pfw = arg;
 dtrace_hdl_t *dtp = pfw->pfw_argv->pfv_dtp;
 int i;

 if (dt_printf_format(dtp, pfw->pfw_fp, pfw->pfw_argv,
     rec, nrecs, aggdata->dtada_data, aggdata->dtada_size,
     aggsdata, naggvars) == -1)
  return (pfw->pfw_err = dtp->dt_errno);





 for (i = 1; i < naggvars; i++) {
  agg = aggsdata[i]->dtada_desc;
  ((dtrace_aggdesc_t *)agg)->dtagd_flags |= DTRACE_AGD_PRINTED;
 }

 return (0);
}
