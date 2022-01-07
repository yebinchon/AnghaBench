
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int s ;
struct TYPE_13__ {scalar_t__ di_vers; } ;
struct TYPE_12__ {scalar_t__ di_vers; } ;
struct TYPE_15__ {TYPE_2__ dx_ptrid; TYPE_1__ dx_souid; } ;
struct TYPE_14__ {scalar_t__ dt_vmax; int dt_tls; int dt_globals; int dt_aggs; int dt_macros; TYPE_4__ dt_xlators; } ;
typedef TYPE_3__ dtrace_hdl_t ;
typedef TYPE_4__ dt_xlator_t ;
typedef scalar_t__ dt_version_t ;
typedef int dt_idhash_f ;


 int DT_VERSION_STRMAX ;
 int EDT_VERSREDUCED ;
 int dt_dprintf (char*,int ) ;
 int dt_idhash_iter (int ,int *,TYPE_3__*) ;
 int dt_list_delete (TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* dt_list_next (TYPE_4__*) ;
 scalar_t__ dt_reduceid ;
 int dt_set_errno (TYPE_3__*,int ) ;
 int dt_version_num2str (scalar_t__,char*,int) ;

int
dt_reduce(dtrace_hdl_t *dtp, dt_version_t v)
{
 char s[DT_VERSION_STRMAX];
 dt_xlator_t *dxp, *nxp;

 if (v > dtp->dt_vmax)
  return (dt_set_errno(dtp, EDT_VERSREDUCED));
 else if (v == dtp->dt_vmax)
  return (0);

 dt_dprintf("reducing api version to %s\n",
     dt_version_num2str(v, s, sizeof (s)));

 dtp->dt_vmax = v;

 for (dxp = dt_list_next(&dtp->dt_xlators); dxp != ((void*)0); dxp = nxp) {
  nxp = dt_list_next(dxp);
  if ((dxp->dx_souid.di_vers != 0 && dxp->dx_souid.di_vers > v) ||
      (dxp->dx_ptrid.di_vers != 0 && dxp->dx_ptrid.di_vers > v))
   dt_list_delete(&dtp->dt_xlators, dxp);
 }

 (void) dt_idhash_iter(dtp->dt_macros, (dt_idhash_f *)dt_reduceid, dtp);
 (void) dt_idhash_iter(dtp->dt_aggs, (dt_idhash_f *)dt_reduceid, dtp);
 (void) dt_idhash_iter(dtp->dt_globals, (dt_idhash_f *)dt_reduceid, dtp);
 (void) dt_idhash_iter(dtp->dt_tls, (dt_idhash_f *)dt_reduceid, dtp);

 return (0);
}
