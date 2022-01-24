#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ e_machine; int e_shnum; scalar_t__* e_ident; } ;
struct TYPE_15__ {int sh_size; scalar_t__ sh_type; int /*<<< orphan*/  sh_link; int /*<<< orphan*/  sh_offset; int /*<<< orphan*/  sh_info; } ;
struct TYPE_14__ {int r_offset; int r_info; int /*<<< orphan*/  r_addend; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ Elf_Internal_Sym ;
typedef  TYPE_2__ Elf_Internal_Shdr ;
typedef  TYPE_1__ Elf_Internal_Rela ;

/* Variables and functions */
 size_t EI_DATA ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ELFDATA2MSB ; 
 scalar_t__ EM_MIPS ; 
 scalar_t__ EM_SH ; 
 TYPE_1__* FUNC4 (void*,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ SHT_RELA ; 
 scalar_t__ STT_NOTYPE ; 
 scalar_t__ STT_OBJECT ; 
 scalar_t__ STT_SECTION ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_8__ elf_header ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 unsigned int FUNC11 (TYPE_1__*) ; 
 unsigned long FUNC12 (scalar_t__) ; 
 scalar_t__ is_32bit_elf ; 
 int /*<<< orphan*/  is_relocatable ; 
 TYPE_2__* section_headers ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ ,scalar_t__,TYPE_1__**,unsigned long*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15 (void *file,
			  Elf_Internal_Shdr *section,
			  unsigned char *start)
{
  Elf_Internal_Shdr *relsec;
  unsigned char *end = start + section->sh_size;

  if (!is_relocatable)
    return 1;

  /* SH uses RELA but uses in place value instead of the addend field.  */
  if (elf_header.e_machine == EM_SH)
    return 0;

  for (relsec = section_headers;
       relsec < section_headers + elf_header.e_shnum;
       ++relsec)
    {
      unsigned long nrelas;
      Elf_Internal_Rela *rela, *rp;
      Elf_Internal_Shdr *symsec;
      Elf_Internal_Sym *symtab;
      Elf_Internal_Sym *sym;

      if (relsec->sh_type != SHT_RELA
	  || FUNC6 (relsec->sh_info) >= elf_header.e_shnum
	  || FUNC5 (relsec->sh_info) != section
	  || relsec->sh_size == 0
	  || FUNC6 (relsec->sh_link) >= elf_header.e_shnum)
	continue;

      if (!FUNC13 (file, relsec->sh_offset, relsec->sh_size,
			      &rela, &nrelas))
	return 0;

      symsec = FUNC5 (relsec->sh_link);
      symtab = FUNC4 (file, symsec);

      for (rp = rela; rp < rela + nrelas; ++rp)
	{
	  unsigned char *loc;
	  unsigned int reloc_size;

	  reloc_size = FUNC11 (rp);
	  if (reloc_size == 0)
	    {
	      FUNC14 (FUNC8("skipping relocation of unknown size against offset 0x%lx in section %s\n"),
		    (unsigned long) rp->r_offset,
		    FUNC7 (section));
	      continue;
	    }

	  loc = start + rp->r_offset;
	  if ((loc + reloc_size) > end)
	    {
	      FUNC14 (FUNC8("skipping invalid relocation offset 0x%lx in section %s\n"),
		    (unsigned long) rp->r_offset,
		    FUNC7 (section));
	      continue;
	    }

	  if (is_32bit_elf)
	    {
	      sym = symtab + FUNC0 (rp->r_info);

	      if (FUNC0 (rp->r_info) != 0
		  && FUNC1 (sym->st_info) != STT_SECTION
		  /* Relocations against symbols without type can happen.
		     Gcc -feliminate-dwarf2-dups may generate symbols
		     without type for debug info.  */
		  && FUNC1 (sym->st_info) != STT_NOTYPE
		  /* Relocations against object symbols can happen,
		     eg when referencing a global array.  For an
		     example of this see the _clz.o binary in libgcc.a.  */
		  && FUNC1 (sym->st_info) != STT_OBJECT)
		{
		  FUNC14 (FUNC8("skipping unexpected symbol type %s in relocation in section .rela%s\n"),
			FUNC12 (FUNC1 (sym->st_info)),
			FUNC7 (section));
		  continue;
		}
	    }
	  else
	    {
	      /* In MIPS little-endian objects, r_info isn't really a
		 64-bit little-endian value: it has a 32-bit little-endian
		 symbol index followed by four individual byte fields.
		 Reorder INFO accordingly.  */
	      if (elf_header.e_machine == EM_MIPS
		  && elf_header.e_ident[EI_DATA] != ELFDATA2MSB)
		rp->r_info = (((rp->r_info & 0xffffffff) << 32)
			      | ((rp->r_info >> 56) & 0xff)
			      | ((rp->r_info >> 40) & 0xff00)
			      | ((rp->r_info >> 24) & 0xff0000)
			      | ((rp->r_info >> 8) & 0xff000000));

	      sym = symtab + FUNC2 (rp->r_info);

	      if (FUNC2 (rp->r_info) != 0
		  && FUNC3 (sym->st_info) != STT_SECTION
		  && FUNC3 (sym->st_info) != STT_NOTYPE
		  && FUNC3 (sym->st_info) != STT_OBJECT)
		{
		  FUNC14 (FUNC8("skipping unexpected symbol type %s in relocation in section .rela.%s\n"),
			FUNC12 (FUNC3 (sym->st_info)),
			FUNC7 (section));
		  continue;
		}
	    }

	  FUNC9 (loc, rp->r_addend, reloc_size);
	}

      FUNC10 (symtab);
      FUNC10 (rela);
      break;
    }
  return 1;
}