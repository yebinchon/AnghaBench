#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct hppa_unw_aux_info {int nsyms; char* symtab; int strtab_size; scalar_t__ table_len; int /*<<< orphan*/ * strtab; int /*<<< orphan*/ * table; } ;
typedef  int /*<<< orphan*/  aux ;
struct TYPE_9__ {unsigned long e_shnum; } ;
struct TYPE_8__ {scalar_t__ sh_type; int sh_size; int sh_entsize; scalar_t__ sh_offset; int /*<<< orphan*/  sh_link; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ Elf_Internal_Shdr ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_1__*) ; 
 scalar_t__ SHT_SYMTAB ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hppa_unw_aux_info*) ; 
 int eh_addr_size ; 
 TYPE_4__ elf_header ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct hppa_unw_aux_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 TYPE_1__* section_headers ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct hppa_unw_aux_info*,TYPE_1__*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/ * string_table ; 

__attribute__((used)) static int
FUNC12 (FILE *file)
{
  struct hppa_unw_aux_info aux;
  Elf_Internal_Shdr *unwsec = NULL;
  Elf_Internal_Shdr *strsec;
  Elf_Internal_Shdr *sec;
  unsigned long i;

  FUNC8 (& aux, 0, sizeof (aux));

  if (string_table == NULL)
    return 1;

  for (i = 0, sec = section_headers; i < elf_header.e_shnum; ++i, ++sec)
    {
      if (sec->sh_type == SHT_SYMTAB
	  && FUNC2 (sec->sh_link) < elf_header.e_shnum)
	{
	  aux.nsyms = sec->sh_size / sec->sh_entsize;
	  aux.symtab = FUNC0 (file, sec);

	  strsec = FUNC1 (sec->sh_link);
	  aux.strtab = FUNC7 (NULL, file, strsec->sh_offset,
				 1, strsec->sh_size, FUNC4("string table"));
	  aux.strtab_size = aux.strtab != NULL ? strsec->sh_size : 0;
	}
      else if (FUNC11 (FUNC3 (sec), ".PARISC.unwind"))
	unwsec = sec;
    }

  if (!unwsec)
    FUNC9 (FUNC4("\nThere are no unwind sections in this file.\n"));

  for (i = 0, sec = section_headers; i < elf_header.e_shnum; ++i, ++sec)
    {
      if (FUNC11 (FUNC3 (sec), ".PARISC.unwind"))
	{
	  FUNC9 (FUNC4("\nUnwind section "));
	  FUNC9 (FUNC4("'%s'"), FUNC3 (sec));

	  FUNC9 (FUNC4(" at offset 0x%lx contains %lu entries:\n"),
		  (unsigned long) sec->sh_offset,
		  (unsigned long) (sec->sh_size / (2 * eh_addr_size + 8)));

          FUNC10 (file, &aux, sec);
	  if (aux.table_len > 0)
	    FUNC5 (&aux);

	  if (aux.table)
	    FUNC6 ((char *) aux.table);
	  aux.table = NULL;
	}
    }

  if (aux.symtab)
    FUNC6 (aux.symtab);
  if (aux.strtab)
    FUNC6 ((char *) aux.strtab);

  return 1;
}