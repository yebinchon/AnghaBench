
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int dt_provbuckets; int dt_gen; } ;
typedef TYPE_3__ dtrace_hdl_t ;
struct TYPE_15__ {void* dtpa_args; void* dtpa_name; void* dtpa_func; void* dtpa_mod; void* dtpa_provider; } ;
struct TYPE_16__ {TYPE_1__ dtvd_attr; int dtvd_name; } ;
struct TYPE_18__ {TYPE_2__ pv_desc; int * pv_probes; TYPE_3__* pv_hdl; int pv_gen; } ;
typedef TYPE_4__ dt_provider_t ;


 int DTRACE_PROVNAMELEN ;
 int EDT_NOMEM ;
 void* _dtrace_prvattr ;
 int dt_free (TYPE_3__*,TYPE_4__*) ;
 int * dt_idhash_create (int ,int *,int ,int ) ;
 TYPE_4__* dt_provider_insert (TYPE_3__*,TYPE_4__*,int) ;
 int dt_set_errno (TYPE_3__*,int ) ;
 int dt_strtab_hash (char const*,int *) ;
 TYPE_4__* dt_zalloc (TYPE_3__*,int) ;
 int strlcpy (int ,char const*,int ) ;

dt_provider_t *
dt_provider_create(dtrace_hdl_t *dtp, const char *name)
{
 dt_provider_t *pvp;

 if ((pvp = dt_zalloc(dtp, sizeof (dt_provider_t))) == ((void*)0))
  return (((void*)0));

 (void) strlcpy(pvp->pv_desc.dtvd_name, name, DTRACE_PROVNAMELEN);
 pvp->pv_probes = dt_idhash_create(pvp->pv_desc.dtvd_name, ((void*)0), 0, 0);
 pvp->pv_gen = dtp->dt_gen;
 pvp->pv_hdl = dtp;

 if (pvp->pv_probes == ((void*)0)) {
  dt_free(dtp, pvp);
  (void) dt_set_errno(dtp, EDT_NOMEM);
  return (((void*)0));
 }

 pvp->pv_desc.dtvd_attr.dtpa_provider = _dtrace_prvattr;
 pvp->pv_desc.dtvd_attr.dtpa_mod = _dtrace_prvattr;
 pvp->pv_desc.dtvd_attr.dtpa_func = _dtrace_prvattr;
 pvp->pv_desc.dtvd_attr.dtpa_name = _dtrace_prvattr;
 pvp->pv_desc.dtvd_attr.dtpa_args = _dtrace_prvattr;

 return (dt_provider_insert(dtp, pvp,
     dt_strtab_hash(name, ((void*)0)) % dtp->dt_provbuckets));
}
