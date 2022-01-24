#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sym_sec_cache {unsigned long* indx; int /*<<< orphan*/ ** sec; int /*<<< orphan*/ * abfd; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_5__ {int /*<<< orphan*/  symtab_hdr; } ;
struct TYPE_4__ {scalar_t__ st_shndx; } ;
typedef  TYPE_1__ Elf_Internal_Sym ;
typedef  int /*<<< orphan*/  Elf_Internal_Shdr ;
typedef  int /*<<< orphan*/  Elf_External_Sym_Shndx ;
typedef  int /*<<< orphan*/  Elf64_External_Sym ;

/* Variables and functions */
 unsigned long LOCAL_SYM_CACHE_SIZE ; 
 scalar_t__ SHN_HIRESERVE ; 
 scalar_t__ SHN_LORESERVE ; 
 scalar_t__ SHN_UNDEF ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned long,TYPE_1__*,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int,int) ; 

asection *
FUNC4 (bfd *abfd,
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

  symtab_hdr = &FUNC2 (abfd)->symtab_hdr;
  if (FUNC0 (abfd, symtab_hdr, 1, r_symndx,
			    &isym, esym, &eshndx) == NULL)
    return NULL;

  if (cache->abfd != abfd)
    {
      FUNC3 (cache->indx, -1, sizeof (cache->indx));
      cache->abfd = abfd;
    }
  cache->indx[ent] = r_symndx;
  cache->sec[ent] = sec;
  if ((isym.st_shndx != SHN_UNDEF && isym.st_shndx < SHN_LORESERVE)
      || isym.st_shndx > SHN_HIRESERVE)
    {
      asection *s;
      s = FUNC1 (abfd, isym.st_shndx);
      if (s != NULL)
	cache->sec[ent] = s;
    }
  return cache->sec[ent];
}