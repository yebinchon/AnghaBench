
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_6__ {TYPE_3__* cts_data; } ;
struct TYPE_7__ {int dm_aslen; TYPE_1__ dm_symtab; scalar_t__ dm_asmap; } ;
typedef TYPE_2__ dt_module_t ;
struct TYPE_8__ {scalar_t__ st_value; int st_size; } ;
typedef int GElf_Sym ;
typedef scalar_t__ GElf_Addr ;
typedef TYPE_3__ Elf64_Sym ;
typedef scalar_t__ Elf64_Addr ;


 scalar_t__ MAX (int ,int) ;
 int * dt_module_symgelf64 (TYPE_3__ const*,int *) ;

__attribute__((used)) static GElf_Sym *
dt_module_symaddr64(dt_module_t *dmp, GElf_Addr addr,
    GElf_Sym *symp, uint_t *idp)
{
 const Elf64_Sym **asmap = (const Elf64_Sym **)dmp->dm_asmap;
 const Elf64_Sym *symtab = dmp->dm_symtab.cts_data;
 const Elf64_Sym *sym;

 uint_t i, mid, lo = 0, hi = dmp->dm_aslen - 1;
 Elf64_Addr v;

 if (dmp->dm_aslen == 0)
  return (((void*)0));

 while (hi - lo > 1) {
  mid = (lo + hi) / 2;
  if (addr >= asmap[mid]->st_value)
   lo = mid;
  else
   hi = mid;
 }

 i = addr < asmap[hi]->st_value ? lo : hi;
 sym = asmap[i];
 v = sym->st_value;





 while (i-- != 0 && asmap[i]->st_value == v)
  sym = asmap[i];

 if (addr - sym->st_value < MAX(sym->st_size, 1)) {
  if (idp != ((void*)0))
   *idp = (uint_t)(sym - symtab);
  return (dt_module_symgelf64(sym, symp));
 }

 return (((void*)0));
}
