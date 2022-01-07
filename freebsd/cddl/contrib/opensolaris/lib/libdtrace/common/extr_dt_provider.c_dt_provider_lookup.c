
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef size_t uint_t ;
struct TYPE_15__ {int dtvd_name; } ;
typedef TYPE_1__ dtrace_providerdesc_t ;
struct TYPE_16__ {size_t dt_provbuckets; TYPE_3__** dt_provs; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_14__ {int dtvd_name; } ;
struct TYPE_17__ {int pv_flags; TYPE_13__ pv_desc; struct TYPE_17__* pv_next; } ;
typedef TYPE_3__ dt_provider_t ;
typedef int desc ;


 int DTRACEIOC_PROVIDER ;
 int DTRACE_PROVNAMELEN ;
 int DT_PROVIDER_IMPL ;
 scalar_t__ EDT_NOPROV ;
 scalar_t__ ESRCH ;
 int bcopy (TYPE_1__*,TYPE_13__*,int) ;
 int bzero (TYPE_1__*,int) ;
 int dt_ioctl (TYPE_2__*,int ,TYPE_1__*) ;
 TYPE_3__* dt_provider_create (TYPE_2__*,char const*) ;
 int dt_set_errno (TYPE_2__*,scalar_t__) ;
 size_t dt_strtab_hash (char const*,int *) ;
 scalar_t__ errno ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ strisglob (char const*) ;
 int strlcpy (int ,char const*,int ) ;

dt_provider_t *
dt_provider_lookup(dtrace_hdl_t *dtp, const char *name)
{
 uint_t h = dt_strtab_hash(name, ((void*)0)) % dtp->dt_provbuckets;
 dtrace_providerdesc_t desc;
 dt_provider_t *pvp;

 for (pvp = dtp->dt_provs[h]; pvp != ((void*)0); pvp = pvp->pv_next) {
  if (strcmp(pvp->pv_desc.dtvd_name, name) == 0)
   return (pvp);
 }

 if (strisglob(name) || name[0] == '\0') {
  (void) dt_set_errno(dtp, EDT_NOPROV);
  return (((void*)0));
 }

 bzero(&desc, sizeof (desc));
 (void) strlcpy(desc.dtvd_name, name, DTRACE_PROVNAMELEN);

 if (dt_ioctl(dtp, DTRACEIOC_PROVIDER, &desc) == -1) {
  (void) dt_set_errno(dtp, errno == ESRCH ? EDT_NOPROV : errno);
  return (((void*)0));
 }

 if ((pvp = dt_provider_create(dtp, name)) == ((void*)0))
  return (((void*)0));

 bcopy(&desc, &pvp->pv_desc, sizeof (desc));
 pvp->pv_flags |= DT_PROVIDER_IMPL;
 return (pvp);
}
