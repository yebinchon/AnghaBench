
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_14__ {int dtt_type; int dtt_ctfp; } ;
typedef TYPE_1__ dtrace_typeinfo_t ;
struct TYPE_15__ {int dts_id; int dts_name; int dts_object; } ;
typedef TYPE_2__ dtrace_syminfo_t ;
struct TYPE_16__ {int dt_gen; } ;
typedef TYPE_3__ dtrace_hdl_t ;
struct TYPE_17__ {int dm_name; int * dm_extern; int dm_nsymelems; } ;
typedef TYPE_4__ dt_module_t ;
struct TYPE_18__ {int di_type; int di_ctfp; TYPE_2__* di_data; int di_id; int di_name; } ;
typedef TYPE_5__ dt_ident_t ;


 int DT_IDENT_SYMBOL ;
 int EDT_NOMEM ;
 int EDT_SYMOFLOW ;
 int UINT_MAX ;
 int _dtrace_symattr ;
 int * dt_idhash_create (char*,int *,int ,int ) ;
 TYPE_5__* dt_idhash_insert (int *,char const*,int ,int ,int ,int ,int ,int *,int *,int ) ;
 int dt_idhash_nextid (int *,int *) ;
 int dt_idops_thaw ;
 int dt_set_errno (TYPE_3__*,int ) ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;

dt_ident_t *
dt_module_extern(dtrace_hdl_t *dtp, dt_module_t *dmp,
    const char *name, const dtrace_typeinfo_t *tip)
{
 dtrace_syminfo_t *sip;
 dt_ident_t *idp;
 uint_t id;

 if (dmp->dm_extern == ((void*)0) && (dmp->dm_extern = dt_idhash_create(
     "extern", ((void*)0), dmp->dm_nsymelems, UINT_MAX)) == ((void*)0)) {
  (void) dt_set_errno(dtp, EDT_NOMEM);
  return (((void*)0));
 }

 if (dt_idhash_nextid(dmp->dm_extern, &id) == -1) {
  (void) dt_set_errno(dtp, EDT_SYMOFLOW);
  return (((void*)0));
 }

 if ((sip = malloc(sizeof (dtrace_syminfo_t))) == ((void*)0)) {
  (void) dt_set_errno(dtp, EDT_NOMEM);
  return (((void*)0));
 }

 idp = dt_idhash_insert(dmp->dm_extern, name, DT_IDENT_SYMBOL, 0, id,
     _dtrace_symattr, 0, &dt_idops_thaw, ((void*)0), dtp->dt_gen);

 if (idp == ((void*)0)) {
  (void) dt_set_errno(dtp, EDT_NOMEM);
  free(sip);
  return (((void*)0));
 }

 sip->dts_object = dmp->dm_name;
 sip->dts_name = idp->di_name;
 sip->dts_id = idp->di_id;

 idp->di_data = sip;
 idp->di_ctfp = tip->dtt_ctfp;
 idp->di_type = tip->dtt_type;

 return (idp);
}
