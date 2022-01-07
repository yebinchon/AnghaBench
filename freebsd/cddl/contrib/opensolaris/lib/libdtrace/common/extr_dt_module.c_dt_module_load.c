
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint_t ;
typedef int dtrace_hdl_t ;
typedef int dt_sym_t ;
struct TYPE_11__ {char* cts_name; int cts_size; int cts_entsize; scalar_t__ cts_offset; int * cts_data; scalar_t__ cts_flags; int cts_type; } ;
struct TYPE_10__ {int dm_flags; scalar_t__ dm_pid; int dm_nsymelems; int dm_nsymbuckets; int dm_symfree; int dm_asrsv; int dm_aslen; TYPE_6__ dm_symtab; int dm_name; TYPE_9__* dm_ops; int * dm_asmap; int * dm_symchains; int * dm_symbuckets; TYPE_6__ dm_strtab; TYPE_6__ dm_ctdata; } ;
typedef TYPE_1__ dt_module_t ;
struct TYPE_12__ {int (* do_syminit ) (TYPE_1__*) ;int (* do_symsort ) (TYPE_1__*) ;} ;
typedef int Elf64_Sym ;
typedef int Elf32_Sym ;


 int DT_DM_LOADED ;
 int EDT_NOMEM ;
 int SHT_PROGBITS ;
 int SHT_STRTAB ;
 int SHT_SYMTAB ;
 int _dtrace_strbuckets ;
 void* calloc (int,int) ;
 int dt_dprintf (char*,int ,char*,int) ;
 TYPE_9__ dt_modops_64 ;
 int dt_module_load_proc (int *,TYPE_1__*) ;
 int dt_module_load_sect (int *,TYPE_1__*,TYPE_6__*) ;
 int dt_module_unload (int *,TYPE_1__*) ;
 int dt_set_errno (int *,int ) ;
 int * malloc (int) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

int
dt_module_load(dtrace_hdl_t *dtp, dt_module_t *dmp)
{
 if (dmp->dm_flags & DT_DM_LOADED)
  return (0);

 if (dmp->dm_pid != 0)
  return (dt_module_load_proc(dtp, dmp));

 dmp->dm_ctdata.cts_name = ".SUNW_ctf";
 dmp->dm_ctdata.cts_type = SHT_PROGBITS;
 dmp->dm_ctdata.cts_flags = 0;
 dmp->dm_ctdata.cts_data = ((void*)0);
 dmp->dm_ctdata.cts_size = 0;
 dmp->dm_ctdata.cts_entsize = 0;
 dmp->dm_ctdata.cts_offset = 0;

 dmp->dm_symtab.cts_name = ".symtab";
 dmp->dm_symtab.cts_type = SHT_SYMTAB;
 dmp->dm_symtab.cts_flags = 0;
 dmp->dm_symtab.cts_data = ((void*)0);
 dmp->dm_symtab.cts_size = 0;
 dmp->dm_symtab.cts_entsize = dmp->dm_ops == &dt_modops_64 ?
     sizeof (Elf64_Sym) : sizeof (Elf32_Sym);
 dmp->dm_symtab.cts_offset = 0;

 dmp->dm_strtab.cts_name = ".strtab";
 dmp->dm_strtab.cts_type = SHT_STRTAB;
 dmp->dm_strtab.cts_flags = 0;
 dmp->dm_strtab.cts_data = ((void*)0);
 dmp->dm_strtab.cts_size = 0;
 dmp->dm_strtab.cts_entsize = 0;
 dmp->dm_strtab.cts_offset = 0;







 if (dt_module_load_sect(dtp, dmp, &dmp->dm_ctdata) == -1 ||
     dt_module_load_sect(dtp, dmp, &dmp->dm_symtab) == -1 ||
     dt_module_load_sect(dtp, dmp, &dmp->dm_strtab) == -1) {
  dt_module_unload(dtp, dmp);
  return (-1);
 }







 dmp->dm_nsymelems =
     dmp->dm_symtab.cts_size / dmp->dm_symtab.cts_entsize;

 dmp->dm_nsymbuckets = _dtrace_strbuckets;
 dmp->dm_symfree = 1;

 dmp->dm_symbuckets = calloc(dmp->dm_nsymbuckets, sizeof (uint_t));
 dmp->dm_symchains = calloc(dmp->dm_nsymelems + 1, sizeof (dt_sym_t));

 if (dmp->dm_symbuckets == ((void*)0) || dmp->dm_symchains == ((void*)0)) {
  dt_module_unload(dtp, dmp);
  return (dt_set_errno(dtp, EDT_NOMEM));
 }






 dmp->dm_asrsv = dmp->dm_ops->do_syminit(dmp);

 dt_dprintf("hashed %s [%s] (%u symbols)\n",
     dmp->dm_name, dmp->dm_symtab.cts_name, dmp->dm_symfree - 1);

 if ((dmp->dm_asmap = malloc(sizeof (void *) * dmp->dm_asrsv)) == ((void*)0)) {
  dt_module_unload(dtp, dmp);
  return (dt_set_errno(dtp, EDT_NOMEM));
 }

 dmp->dm_ops->do_symsort(dmp);

 dt_dprintf("sorted %s [%s] (%u symbols)\n",
     dmp->dm_name, dmp->dm_symtab.cts_name, dmp->dm_aslen);

 dmp->dm_flags |= DT_DM_LOADED;
 return (0);
}
