
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pr_vaddr; } ;
typedef TYPE_1__ prmap_t ;
struct TYPE_6__ {int dpa_count; TYPE_4__* dpa_dmp; int dpa_proc; } ;
typedef TYPE_2__ dt_module_cb_arg_t ;
typedef int ctf_file_t ;
typedef int buf ;
struct TYPE_7__ {int ** dm_libctfn; int ** dm_libctfp; } ;
typedef scalar_t__ Lmid_t ;


 int MAXPATHLEN ;
 scalar_t__ Plmid (int ,int ,scalar_t__*) ;
 int * Pname_to_ctf (int ,char const*) ;
 int Pobjname (int ,int ,char*,int) ;
 int asprintf (int **,char*,scalar_t__,char*) ;
 int * ctf_dup (int *) ;
 int ctf_setspecific (int *,TYPE_4__*) ;
 int * strdup (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
dt_module_load_proc_build(void *arg, const prmap_t *prmap, const char *obj)
{
 ctf_file_t *fp;
 char buf[MAXPATHLEN], *p;
 dt_module_cb_arg_t *dcp = arg;
 int count = dcp->dpa_count;
 Lmid_t lmid;

 fp = Pname_to_ctf(dcp->dpa_proc, obj);
 if (fp == ((void*)0))
  return (0);
 fp = ctf_dup(fp);
 if (fp == ((void*)0))
  return (0);
 dcp->dpa_dmp->dm_libctfp[count] = fp;
 (void) Pobjname(dcp->dpa_proc, prmap->pr_vaddr, buf, sizeof (buf));
 if ((p = strrchr(buf, '/')) == ((void*)0))
  p = buf;
 else
  p++;






 if (Plmid(dcp->dpa_proc, prmap->pr_vaddr, &lmid) != 0)
  lmid = 0;

 if (lmid == 0)
  dcp->dpa_dmp->dm_libctfn[count] = strdup(p);
 else
  (void) asprintf(&dcp->dpa_dmp->dm_libctfn[count],
      "LM%x`%s", lmid, p);
 if (dcp->dpa_dmp->dm_libctfn[count] == ((void*)0))
  return (1);
 ctf_setspecific(fp, dcp->dpa_dmp);
 dcp->dpa_count++;
 return (0);
}
