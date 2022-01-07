
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sym_sec_cache {unsigned long* indx; int ** sec; int * abfd; } ;
typedef int bfd ;
typedef int asection ;
struct TYPE_5__ {int symtab_hdr; } ;
struct TYPE_4__ {scalar_t__ st_shndx; } ;
typedef TYPE_1__ Elf_Internal_Sym ;
typedef int Elf_Internal_Shdr ;
typedef int Elf_External_Sym_Shndx ;
typedef int Elf64_External_Sym ;


 unsigned long LOCAL_SYM_CACHE_SIZE ;
 scalar_t__ SHN_HIRESERVE ;
 scalar_t__ SHN_LORESERVE ;
 scalar_t__ SHN_UNDEF ;
 int * bfd_elf_get_elf_syms (int *,int *,int,unsigned long,TYPE_1__*,unsigned char*,int *) ;
 int * bfd_section_from_elf_index (int *,scalar_t__) ;
 TYPE_2__* elf_tdata (int *) ;
 int memset (unsigned long*,int,int) ;

asection *
bfd_section_from_r_symndx (bfd *abfd,
      struct sym_sec_cache *cache,
      asection *sec,
      unsigned long r_symndx)
{
  Elf_Internal_Shdr *symtab_hdr;
  unsigned char esym[sizeof (Elf64_External_Sym)];
  Elf_External_Sym_Shndx eshndx;
  Elf_Internal_Sym isym;
  unsigned int ent = r_symndx % LOCAL_SYM_CACHE_SIZE;

  if (cache->abfd == abfd && cache->indx[ent] == r_symndx)
    return cache->sec[ent];

  symtab_hdr = &elf_tdata (abfd)->symtab_hdr;
  if (bfd_elf_get_elf_syms (abfd, symtab_hdr, 1, r_symndx,
       &isym, esym, &eshndx) == ((void*)0))
    return ((void*)0);

  if (cache->abfd != abfd)
    {
      memset (cache->indx, -1, sizeof (cache->indx));
      cache->abfd = abfd;
    }
  cache->indx[ent] = r_symndx;
  cache->sec[ent] = sec;
  if ((isym.st_shndx != SHN_UNDEF && isym.st_shndx < SHN_LORESERVE)
      || isym.st_shndx > SHN_HIRESERVE)
    {
      asection *s;
      s = bfd_section_from_elf_index (abfd, isym.st_shndx);
      if (s != ((void*)0))
 cache->sec[ent] = s;
    }
  return cache->sec[ent];
}
