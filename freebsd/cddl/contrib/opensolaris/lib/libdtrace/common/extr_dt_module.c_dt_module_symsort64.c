
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_9__ {int ds_symid; } ;
typedef TYPE_3__ dt_sym_t ;
struct TYPE_8__ {int * cts_data; } ;
struct TYPE_7__ {scalar_t__ cts_data; } ;
struct TYPE_10__ {int dm_symfree; int dm_aslen; scalar_t__ dm_asrsv; scalar_t__ dm_asmap; TYPE_2__ dm_strtab; TYPE_3__* dm_symchains; TYPE_1__ dm_symtab; } ;
typedef TYPE_4__ dt_module_t ;
struct TYPE_11__ {scalar_t__ st_value; scalar_t__ st_size; int st_info; } ;
typedef TYPE_5__ Elf64_Sym ;


 scalar_t__ ELF64_ST_BIND (int ) ;
 scalar_t__ STB_LOCAL ;
 int assert (int) ;
 int * dt_module_strtab ;
 int dt_module_symcomp64 ;
 int qsort (scalar_t__,scalar_t__,int,int ) ;

__attribute__((used)) static void
dt_module_symsort64(dt_module_t *dmp)
{
 Elf64_Sym *symtab = (Elf64_Sym *)dmp->dm_symtab.cts_data;
 Elf64_Sym **sympp = (Elf64_Sym **)dmp->dm_asmap;
 const dt_sym_t *dsp = dmp->dm_symchains + 1;
 uint_t i, n = dmp->dm_symfree;

 for (i = 1; i < n; i++, dsp++) {
  Elf64_Sym *sym = symtab + dsp->ds_symid;
  if (sym->st_value != 0 &&
      (ELF64_ST_BIND(sym->st_info) != STB_LOCAL || sym->st_size))
   *sympp++ = sym;
 }

 dmp->dm_aslen = (uint_t)(sympp - (Elf64_Sym **)dmp->dm_asmap);
 assert(dmp->dm_aslen <= dmp->dm_asrsv);

 dt_module_strtab = dmp->dm_strtab.cts_data;
 qsort(dmp->dm_asmap, dmp->dm_aslen,
     sizeof (Elf64_Sym *), dt_module_symcomp64);
 dt_module_strtab = ((void*)0);
}
