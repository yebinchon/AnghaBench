#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int rela; char* name; size_t size; size_t reloc; } ;
struct TYPE_10__ {unsigned long e_shnum; } ;
struct TYPE_9__ {scalar_t__ sh_type; unsigned long sh_offset; unsigned long sh_size; int sh_name; unsigned long sh_entsize; scalar_t__ sh_link; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  char Elf_Internal_Sym ;
typedef  TYPE_1__ Elf_Internal_Shdr ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_4__*) ; 
 size_t DT_JMPREL ; 
 size_t DT_PLTREL ; 
#define  DT_REL 129 
#define  DT_RELA 128 
 int FALSE ; 
 char* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 char* FUNC4 (TYPE_1__*) ; 
 scalar_t__ SHT_DYNSYM ; 
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 scalar_t__ SHT_SYMTAB ; 
 int TRUE ; 
 int UNKNOWN ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  do_reloc ; 
 scalar_t__ do_using_dynamic ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long,unsigned long,char*,unsigned long,char*,unsigned long,int) ; 
 long* dynamic_info ; 
 TYPE_4__* dynamic_relocations ; 
 char* dynamic_strings ; 
 unsigned long dynamic_strings_length ; 
 char* dynamic_symbols ; 
 TYPE_3__ elf_header ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,int,unsigned long,char*) ; 
 unsigned long num_dynamic_syms ; 
 unsigned long FUNC9 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 TYPE_1__* section_headers ; 
 int /*<<< orphan*/ * string_table ; 

__attribute__((used)) static int
FUNC11 (FILE *file)
{
  unsigned long rel_size;
  unsigned long rel_offset;


  if (!do_reloc)
    return 1;

  if (do_using_dynamic)
    {
      int is_rela;
      const char *name;
      int has_dynamic_reloc;
      unsigned int i;

      has_dynamic_reloc = 0;

      for (i = 0; i < FUNC0 (dynamic_relocations); i++)
	{
	  is_rela = dynamic_relocations [i].rela;
	  name = dynamic_relocations [i].name;
	  rel_size = dynamic_info [dynamic_relocations [i].size];
	  rel_offset = dynamic_info [dynamic_relocations [i].reloc];

	  has_dynamic_reloc |= rel_size;

	  if (is_rela == UNKNOWN)
	    {
	      if (dynamic_relocations [i].reloc == DT_JMPREL)
		switch (dynamic_info[DT_PLTREL])
		  {
		  case DT_REL:
		    is_rela = FALSE;
		    break;
		  case DT_RELA:
		    is_rela = TRUE;
		    break;
		  }
	    }

	  if (rel_size)
	    {
	      FUNC10
		(FUNC5("\n'%s' relocation section at offset 0x%lx contains %ld bytes:\n"),
		 name, rel_offset, rel_size);

	      FUNC6 (file,
				FUNC9 (file, rel_offset, rel_size),
				rel_size,
				dynamic_symbols, num_dynamic_syms,
				dynamic_strings, dynamic_strings_length, is_rela);
	    }
	}

      if (! has_dynamic_reloc)
	FUNC10 (FUNC5("\nThere are no dynamic relocations in this file.\n"));
    }
  else
    {
      Elf_Internal_Shdr *section;
      unsigned long i;
      int found = 0;

      for (i = 0, section = section_headers;
	   i < elf_header.e_shnum;
	   i++, section++)
	{
	  if (   section->sh_type != SHT_RELA
	      && section->sh_type != SHT_REL)
	    continue;

	  rel_offset = section->sh_offset;
	  rel_size   = section->sh_size;

	  if (rel_size)
	    {
	      Elf_Internal_Shdr *strsec;
	      int is_rela;

	      FUNC10 (FUNC5("\nRelocation section "));

	      if (string_table == NULL)
		FUNC10 ("%d", section->sh_name);
	      else
		FUNC10 (FUNC5("'%s'"), FUNC4 (section));

	      FUNC10 (FUNC5(" at offset 0x%lx contains %lu entries:\n"),
		 rel_offset, (unsigned long) (rel_size / section->sh_entsize));

	      is_rela = section->sh_type == SHT_RELA;

	      if (section->sh_link
		  && FUNC3 (section->sh_link)
		     < elf_header.e_shnum)
		{
		  Elf_Internal_Shdr *symsec;
		  Elf_Internal_Sym *symtab;
		  unsigned long nsyms;
		  unsigned long strtablen = 0;
		  char *strtab = NULL;

		  symsec = FUNC2 (section->sh_link);
		  if (symsec->sh_type != SHT_SYMTAB
		      && symsec->sh_type != SHT_DYNSYM)
                    continue;

		  nsyms = symsec->sh_size / symsec->sh_entsize;
		  symtab = FUNC1 (file, symsec);

		  if (symtab == NULL)
		    continue;

		  if (FUNC3 (symsec->sh_link)
		      < elf_header.e_shnum)
		    {
		      strsec = FUNC2 (symsec->sh_link);

		      strtab = FUNC8 (NULL, file, strsec->sh_offset,
					 1, strsec->sh_size,
					 FUNC5("string table"));
		      strtablen = strtab == NULL ? 0 : strsec->sh_size;
		    }

		  FUNC6 (file, rel_offset, rel_size,
				    symtab, nsyms, strtab, strtablen, is_rela);
		  if (strtab)
		    FUNC7 (strtab);
		  FUNC7 (symtab);
		}
	      else
		FUNC6 (file, rel_offset, rel_size,
				  NULL, 0, NULL, 0, is_rela);

	      found = 1;
	    }
	}

      if (! found)
	FUNC10 (FUNC5("\nThere are no relocations in this file.\n"));
    }

  return 1;
}