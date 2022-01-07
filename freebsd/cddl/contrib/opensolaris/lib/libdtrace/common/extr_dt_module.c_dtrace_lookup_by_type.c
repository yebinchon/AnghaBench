
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_17__ {scalar_t__ dtt_type; int * dtt_ctfp; int dtt_object; } ;
typedef TYPE_1__ dtrace_typeinfo_t ;
struct TYPE_19__ {size_t dm_flags; scalar_t__ dm_pid; size_t dm_nctflibs; int dm_name; int ** dm_libctfp; int * dm_ctfp; } ;
struct TYPE_18__ {size_t dt_nmods; TYPE_3__ dt_modlist; } ;
typedef TYPE_2__ dtrace_hdl_t ;
typedef TYPE_3__ dt_module_t ;
typedef scalar_t__ ctf_id_t ;
typedef int ctf_file_t ;


 scalar_t__ CTF_ERR ;
 scalar_t__ CTF_K_FORWARD ;
 char const* DTRACE_OBJ_EVERY ;
 char const* DTRACE_OBJ_KMODS ;
 char const* DTRACE_OBJ_UMODS ;
 size_t DT_DM_KERNEL ;
 int EDT_NOMEM ;
 int EDT_NOTYPE ;
 scalar_t__ ctf_lookup_by_name (int *,char const*) ;
 scalar_t__ ctf_type_kind (int *,int ) ;
 int ctf_type_resolve (int *,scalar_t__) ;
 TYPE_3__* dt_list_next (TYPE_3__*) ;
 TYPE_3__* dt_module_from_object (TYPE_2__*,char const*) ;
 int * dt_module_getctflib (TYPE_2__*,TYPE_3__*,char*) ;
 scalar_t__ dt_module_hasctf (TYPE_2__*,TYPE_3__*) ;
 int dt_module_load (TYPE_2__*,TYPE_3__*) ;
 int dt_set_errno (TYPE_2__*,int ) ;
 int free (char*) ;
 char* strchr (char const*,char) ;
 char* strdup (char const*) ;

int
dtrace_lookup_by_type(dtrace_hdl_t *dtp, const char *object, const char *name,
    dtrace_typeinfo_t *tip)
{
 dtrace_typeinfo_t ti;
 dt_module_t *dmp;
 int found = 0;
 ctf_id_t id;
 uint_t n, i;
 int justone;
 ctf_file_t *fp;
 char *buf, *p, *q;

 uint_t mask = 0;
 uint_t bits = 0;

 if (object != DTRACE_OBJ_EVERY &&
     object != DTRACE_OBJ_KMODS &&
     object != DTRACE_OBJ_UMODS) {
  if ((dmp = dt_module_from_object(dtp, object)) == ((void*)0))
   return (-1);

  if (dt_module_load(dtp, dmp) == -1)
   return (-1);
  n = 1;
  justone = 1;
 } else {
  if (object == DTRACE_OBJ_KMODS)
   mask = bits = DT_DM_KERNEL;
  else if (object == DTRACE_OBJ_UMODS)
   mask = DT_DM_KERNEL;

  dmp = dt_list_next(&dtp->dt_modlist);
  n = dtp->dt_nmods;
  justone = 0;
 }

 if (tip == ((void*)0))
  tip = &ti;

 for (; n > 0; n--, dmp = dt_list_next(dmp)) {
  if ((dmp->dm_flags & mask) != bits)
   continue;






  if (dt_module_hasctf(dtp, dmp) == 0) {
   if (justone)
    return (-1);
   continue;
  }







  if (dmp->dm_pid == 0) {
   id = ctf_lookup_by_name(dmp->dm_ctfp, name);
   fp = dmp->dm_ctfp;
  } else {
   if ((p = strchr(name, '`')) != ((void*)0)) {
    buf = strdup(name);
    if (buf == ((void*)0))
     return (dt_set_errno(dtp, EDT_NOMEM));
    p = strchr(buf, '`');
    if ((q = strchr(p + 1, '`')) != ((void*)0))
     p = q;
    *p = '\0';
    fp = dt_module_getctflib(dtp, dmp, buf);
    if (fp == ((void*)0) || (id = ctf_lookup_by_name(fp,
        p + 1)) == CTF_ERR)
     id = CTF_ERR;
    free(buf);
   } else {
    for (i = 0; i < dmp->dm_nctflibs; i++) {
     fp = dmp->dm_libctfp[i];
     id = ctf_lookup_by_name(fp, name);
     if (id != CTF_ERR)
      break;
    }
   }
  }
  if (id != CTF_ERR) {
   tip->dtt_object = dmp->dm_name;
   tip->dtt_ctfp = fp;
   tip->dtt_type = id;
   if (ctf_type_kind(fp, ctf_type_resolve(fp, id)) !=
       CTF_K_FORWARD)
    return (0);

   found++;
  }
 }

 if (found == 0)
  return (dt_set_errno(dtp, EDT_NOTYPE));

 return (0);
}
