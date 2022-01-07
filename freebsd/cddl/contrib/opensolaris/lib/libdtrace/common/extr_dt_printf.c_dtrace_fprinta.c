
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_6__ {scalar_t__ dtrd_uarg; scalar_t__ dtrd_action; scalar_t__ dtrd_offset; } ;
typedef TYPE_1__ dtrace_recdesc_t ;
typedef int dtrace_probedata_t ;
typedef int dtrace_hdl_t ;
typedef int dtrace_aggvarid_t ;
struct TYPE_7__ {scalar_t__ pfw_err; int pfw_aid; int * pfw_fp; void* pfw_argv; } ;
typedef TYPE_2__ dt_pfwalk_t ;
typedef scalar_t__ caddr_t ;
typedef int FILE ;


 int EDT_BADAGG ;
 int * alloca (int) ;
 int dt_fprinta ;
 int dt_fprintas ;
 int dt_set_errno (int *,int ) ;
 int dtrace_aggregate_walk_joined (int *,int *,int,int ,TYPE_2__*) ;
 int dtrace_aggregate_walk_sorted (int *,int ,TYPE_2__*) ;

int
dtrace_fprinta(dtrace_hdl_t *dtp, FILE *fp, void *fmtdata,
    const dtrace_probedata_t *data, const dtrace_recdesc_t *recs,
    uint_t nrecs, const void *buf, size_t len)
{
 dt_pfwalk_t pfw;
 int i, naggvars = 0;
 dtrace_aggvarid_t *aggvars;

 aggvars = alloca(nrecs * sizeof (dtrace_aggvarid_t));






 for (i = 0; i < nrecs; i++) {
  const dtrace_recdesc_t *nrec = &recs[i];

  if (nrec->dtrd_uarg != recs->dtrd_uarg)
   break;

  if (nrec->dtrd_action != recs->dtrd_action)
   return (dt_set_errno(dtp, EDT_BADAGG));

  aggvars[naggvars++] =

      *((dtrace_aggvarid_t *)((caddr_t)buf + nrec->dtrd_offset));
 }

 if (naggvars == 0)
  return (dt_set_errno(dtp, EDT_BADAGG));

 pfw.pfw_argv = fmtdata;
 pfw.pfw_fp = fp;
 pfw.pfw_err = 0;

 if (naggvars == 1) {
  pfw.pfw_aid = aggvars[0];

  if (dtrace_aggregate_walk_sorted(dtp,
      dt_fprinta, &pfw) == -1 || pfw.pfw_err != 0)
   return (-1);
 } else {
  if (dtrace_aggregate_walk_joined(dtp, aggvars, naggvars,
      dt_fprintas, &pfw) == -1 || pfw.pfw_err != 0)
   return (-1);
 }

 return (i);
}
