
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
struct TYPE_6__ {int pr_vaddr; } ;
typedef TYPE_1__ prmap_t ;
typedef int m ;
struct TYPE_7__ {char const* dtpd_mod; } ;
typedef TYPE_2__ dtrace_probedesc_t ;
typedef int Lmid_t ;


 int MAXPATHLEN ;
 int PR_LMID_EVERY ;
 int Plmid (struct ps_prochandle*,int ,int *) ;
 TYPE_1__* Plmid_to_map (struct ps_prochandle*,int ,char const*) ;
 int Pobjname (struct ps_prochandle*,int ,char*,int) ;
 int dt_pid_objname (char*,int,int ,char const*) ;
 int isdigit (char const) ;
 int * strchr (char const*,char) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strrchr (char*,char) ;
 int strtoul (char const*,char**,int) ;

__attribute__((used)) static const prmap_t *
dt_pid_fix_mod(dtrace_probedesc_t *pdp, struct ps_prochandle *P)
{
 char m[MAXPATHLEN];
 Lmid_t lmid = PR_LMID_EVERY;
 const char *obj;
 const prmap_t *pmp;




 if (strchr(pdp->dtpd_mod, '`') != ((void*)0)) {
  char *end;

  if (strncmp(pdp->dtpd_mod, "LM", 2) != 0 ||
      !isdigit(pdp->dtpd_mod[2]))
   return (((void*)0));

  lmid = strtoul(&pdp->dtpd_mod[2], &end, 16);

  obj = end + 1;

  if (*end != '`' || strchr(obj, '`') != ((void*)0))
   return (((void*)0));

 } else {
  obj = pdp->dtpd_mod;
 }

 if ((pmp = Plmid_to_map(P, lmid, obj)) == ((void*)0))
  return (((void*)0));

 (void) Pobjname(P, pmp->pr_vaddr, m, sizeof (m));
 if ((obj = strrchr(m, '/')) == ((void*)0))
  obj = &m[0];
 else
  obj++;





 dt_pid_objname(pdp->dtpd_mod, sizeof (pdp->dtpd_mod), lmid, obj);

 return (pmp);
}
