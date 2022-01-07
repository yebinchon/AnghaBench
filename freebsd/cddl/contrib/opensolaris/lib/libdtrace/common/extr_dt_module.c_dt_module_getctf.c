
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_14__ {int dtc_ctfmodel; } ;
struct TYPE_15__ {int dt_ctferr; TYPE_1__ dt_conf; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_13__ {scalar_t__ cts_size; } ;
struct TYPE_16__ {int * dm_ctfp; int dm_name; int dm_strtab; int dm_symtab; TYPE_12__ dm_ctdata; int * dm_ops; } ;
typedef TYPE_3__ dt_module_t ;
typedef int ctf_file_t ;


 scalar_t__ CTF_ERR ;
 int CTF_MODEL_ILP32 ;
 int CTF_MODEL_LP64 ;
 int EDT_CTF ;
 int EDT_DATAMODEL ;
 int EDT_NOCTF ;
 int EDT_NOMEM ;
 int * ctf_bufopen (TYPE_12__*,int *,int *,int *) ;
 int ctf_close (int *) ;
 int ctf_errno (int *) ;
 scalar_t__ ctf_import (int *,int *) ;
 char* ctf_parent_name (int *) ;
 int ctf_setmodel (int *,int) ;
 int ctf_setspecific (int *,TYPE_3__*) ;
 int dt_dprintf (char*,int ,void*) ;
 int dt_modops_64 ;
 TYPE_3__* dt_module_create (TYPE_2__*,char const*) ;
 scalar_t__ dt_module_load (TYPE_2__*,TYPE_3__*) ;
 int dt_set_errno (TYPE_2__*,int ) ;

ctf_file_t *
dt_module_getctf(dtrace_hdl_t *dtp, dt_module_t *dmp)
{
 const char *parent;
 dt_module_t *pmp;
 ctf_file_t *pfp;
 int model;

 if (dmp->dm_ctfp != ((void*)0) || dt_module_load(dtp, dmp) != 0)
  return (dmp->dm_ctfp);

 if (dmp->dm_ops == &dt_modops_64)
  model = CTF_MODEL_LP64;
 else
  model = CTF_MODEL_ILP32;







 if (dtp->dt_conf.dtc_ctfmodel != model) {
  (void) dt_set_errno(dtp, EDT_DATAMODEL);
  return (((void*)0));
 }

 if (dmp->dm_ctdata.cts_size == 0) {
  (void) dt_set_errno(dtp, EDT_NOCTF);
  return (((void*)0));
 }

 dmp->dm_ctfp = ctf_bufopen(&dmp->dm_ctdata,
     &dmp->dm_symtab, &dmp->dm_strtab, &dtp->dt_ctferr);

 if (dmp->dm_ctfp == ((void*)0)) {
  (void) dt_set_errno(dtp, EDT_CTF);
  return (((void*)0));
 }

 (void) ctf_setmodel(dmp->dm_ctfp, model);
 ctf_setspecific(dmp->dm_ctfp, dmp);

 if ((parent = ctf_parent_name(dmp->dm_ctfp)) != ((void*)0)) {
  if ((pmp = dt_module_create(dtp, parent)) == ((void*)0) ||
      (pfp = dt_module_getctf(dtp, pmp)) == ((void*)0)) {
   if (pmp == ((void*)0))
    (void) dt_set_errno(dtp, EDT_NOMEM);
   goto err;
  }

  if (ctf_import(dmp->dm_ctfp, pfp) == CTF_ERR) {
   dtp->dt_ctferr = ctf_errno(dmp->dm_ctfp);
   (void) dt_set_errno(dtp, EDT_CTF);
   goto err;
  }
 }

 dt_dprintf("loaded CTF container for %s (%p)\n",
     dmp->dm_name, (void *)dmp->dm_ctfp);

 return (dmp->dm_ctfp);

err:
 ctf_close(dmp->dm_ctfp);
 dmp->dm_ctfp = ((void*)0);
 return (((void*)0));
}
