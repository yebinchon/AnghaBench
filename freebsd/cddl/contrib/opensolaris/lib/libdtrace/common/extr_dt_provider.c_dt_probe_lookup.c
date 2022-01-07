
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dtrace_probedesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_6__ {int pv_probes; int * pv_hdl; } ;
typedef TYPE_1__ dt_provider_t ;
typedef int dt_probe_t ;
struct TYPE_7__ {int * di_data; } ;
typedef TYPE_2__ dt_ident_t ;


 int DTRACEIOC_PROBEMATCH ;
 int DTRACE_PROBESPEC_NAME ;
 scalar_t__ EBADF ;
 scalar_t__ EDT_NOPROBE ;
 scalar_t__ ESRCH ;
 int alloca (size_t) ;
 TYPE_2__* dt_idhash_lookup (int ,char*) ;
 scalar_t__ dt_ioctl (int *,int ,int *) ;
 int * dt_probe_discover (TYPE_1__*,int *) ;
 char* dt_probe_key (int *,int ) ;
 size_t dt_probe_keylen (int *) ;
 int dt_set_errno (int *,scalar_t__) ;
 scalar_t__ dtrace_str2desc (int *,int ,char const*,int *) ;
 scalar_t__ errno ;

dt_probe_t *
dt_probe_lookup(dt_provider_t *pvp, const char *s)
{
 dtrace_hdl_t *dtp = pvp->pv_hdl;
 dtrace_probedesc_t pd;
 dt_ident_t *idp;
 size_t keylen;
 char *key;

 if (dtrace_str2desc(dtp, DTRACE_PROBESPEC_NAME, s, &pd) != 0)
  return (((void*)0));

 keylen = dt_probe_keylen(&pd);
 key = dt_probe_key(&pd, alloca(keylen));






 if ((idp = dt_idhash_lookup(pvp->pv_probes, key)) != ((void*)0))
  return (idp->di_data);





 if (dt_ioctl(dtp, DTRACEIOC_PROBEMATCH, &pd) == 0)
  return (dt_probe_discover(pvp, &pd));

 if (errno == ESRCH || errno == EBADF)
  (void) dt_set_errno(dtp, EDT_NOPROBE);
 else
  (void) dt_set_errno(dtp, errno);

 return (((void*)0));
}
