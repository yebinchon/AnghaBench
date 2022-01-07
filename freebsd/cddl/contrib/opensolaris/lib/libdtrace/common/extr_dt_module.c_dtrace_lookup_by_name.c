
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_23__ {char const* dts_name; int dts_id; int dts_object; } ;
typedef TYPE_3__ dtrace_syminfo_t ;
struct TYPE_22__ {scalar_t__ cts_data; } ;
struct TYPE_25__ {int dm_flags; int dm_name; int * dm_extern; TYPE_2__ dm_strtab; TYPE_1__* dm_ops; } ;
struct TYPE_24__ {int dt_nmods; TYPE_5__ dt_modlist; } ;
typedef TYPE_4__ dtrace_hdl_t ;
typedef TYPE_5__ dt_module_t ;
struct TYPE_26__ {char const* di_name; int di_id; int di_type; int di_ctfp; } ;
typedef TYPE_6__ dt_ident_t ;
struct TYPE_27__ {uintptr_t st_name; int st_size; scalar_t__ st_value; int st_shndx; scalar_t__ st_other; int st_info; } ;
struct TYPE_21__ {int * (* do_symname ) (TYPE_5__*,char const*,TYPE_7__*,int*) ;} ;
typedef TYPE_7__ GElf_Sym ;


 char const* DTRACE_OBJ_EVERY ;
 char const* DTRACE_OBJ_KMODS ;
 char const* DTRACE_OBJ_UMODS ;
 int DT_DM_KERNEL ;
 int EDT_NOSYM ;
 int GELF_ST_INFO (int ,int ) ;
 int SHN_UNDEF ;
 int STB_GLOBAL ;
 int STT_NOTYPE ;
 int ctf_type_size (int ,int ) ;
 TYPE_6__* dt_idhash_lookup (int *,char const*) ;
 TYPE_5__* dt_list_next (TYPE_5__*) ;
 TYPE_5__* dt_module_from_object (TYPE_4__*,char const*) ;
 int dt_module_load (TYPE_4__*,TYPE_5__*) ;
 int dt_set_errno (TYPE_4__*,int ) ;
 int * stub1 (TYPE_5__*,char const*,TYPE_7__*,int*) ;

int
dtrace_lookup_by_name(dtrace_hdl_t *dtp, const char *object, const char *name,
    GElf_Sym *symp, dtrace_syminfo_t *sip)
{
 dt_module_t *dmp;
 dt_ident_t *idp;
 uint_t n, id;
 GElf_Sym sym;

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

 } else {
  if (object == DTRACE_OBJ_KMODS)
   mask = bits = DT_DM_KERNEL;
  else if (object == DTRACE_OBJ_UMODS)
   mask = DT_DM_KERNEL;

  dmp = dt_list_next(&dtp->dt_modlist);
  n = dtp->dt_nmods;
 }

 if (symp == ((void*)0))
  symp = &sym;

 for (; n > 0; n--, dmp = dt_list_next(dmp)) {
  if ((dmp->dm_flags & mask) != bits)
   continue;

  if (dt_module_load(dtp, dmp) == -1)
   continue;

  if (dmp->dm_ops->do_symname(dmp, name, symp, &id) != ((void*)0)) {
   if (sip != ((void*)0)) {
    sip->dts_object = dmp->dm_name;
    sip->dts_name = (const char *)
        dmp->dm_strtab.cts_data + symp->st_name;
    sip->dts_id = id;
   }
   return (0);
  }

  if (dmp->dm_extern != ((void*)0) &&
      (idp = dt_idhash_lookup(dmp->dm_extern, name)) != ((void*)0)) {
   if (symp != &sym) {
    symp->st_name = (uintptr_t)idp->di_name;
    symp->st_info =
        GELF_ST_INFO(STB_GLOBAL, STT_NOTYPE);
    symp->st_other = 0;
    symp->st_shndx = SHN_UNDEF;
    symp->st_value = 0;
    symp->st_size =
        ctf_type_size(idp->di_ctfp, idp->di_type);
   }

   if (sip != ((void*)0)) {
    sip->dts_object = dmp->dm_name;
    sip->dts_name = idp->di_name;
    sip->dts_id = idp->di_id;
   }

   return (0);
  }
 }

 return (dt_set_errno(dtp, EDT_NOSYM));
}
