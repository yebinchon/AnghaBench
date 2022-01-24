#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct objfile {int /*<<< orphan*/  section_offsets; int /*<<< orphan*/ * obfd; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_14__ {int value; int flags; int address; struct TYPE_14__** sym_ptr_ptr; TYPE_1__* howto; } ;
typedef  TYPE_2__ asymbol ;
struct TYPE_15__ {int vma; } ;
typedef  TYPE_3__ asection ;
typedef  TYPE_2__ arelent ;
struct TYPE_13__ {int type; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BSF_GLOBAL ; 
 int DYNAMIC ; 
 int N_BSS ; 
 int N_DATA ; 
 int N_EXT ; 
 int N_TEXT ; 
 int RELOC_JMP_SLOT ; 
 int /*<<< orphan*/  FUNC1 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC2 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC3 (struct objfile*) ; 
 int SEC_ALLOC ; 
 int SEC_CODE ; 
 int SEC_DATA ; 
#define  bfd_arch_m68k 129 
#define  bfd_arch_sparc 128 
 int bfd_arch_unknown ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 long FUNC5 (int /*<<< orphan*/ *,TYPE_2__**,TYPE_2__**) ; 
 long FUNC6 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 long FUNC8 (int /*<<< orphan*/ *) ; 
 long FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (TYPE_2__*) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_target_aout_flavour ; 
 int /*<<< orphan*/  FUNC15 (struct cleanup*) ; 
 struct cleanup* FUNC16 (int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  mst_solib_trampoline ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int /*<<< orphan*/ ,struct objfile*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,int,struct objfile*) ; 
 int /*<<< orphan*/  xfree ; 
 scalar_t__ FUNC19 (long) ; 

__attribute__((used)) static void
FUNC20 (struct objfile *objfile)
{
  bfd *abfd = objfile->obfd;
  struct cleanup *back_to;
  int counter;
  long dynsym_size;
  long dynsym_count;
  asymbol **dynsyms;
  asymbol **symptr;
  arelent **relptr;
  long dynrel_size;
  long dynrel_count;
  arelent **dynrels;
  CORE_ADDR sym_value;
  char *name;

  /* Check that the symbol file has dynamic symbols that we know about.
     bfd_arch_unknown can happen if we are reading a sun3 symbol file
     on a sun4 host (and vice versa) and bfd is not configured
     --with-target=all.  This would trigger an assertion in bfd/sunos.c,
     so we ignore the dynamic symbols in this case.  */
  if (FUNC11 (abfd) != bfd_target_aout_flavour
      || (FUNC10 (abfd) & DYNAMIC) == 0
      || FUNC7 (abfd) == bfd_arch_unknown)
    return;

  dynsym_size = FUNC9 (abfd);
  if (dynsym_size < 0)
    return;

  dynsyms = (asymbol **) FUNC19 (dynsym_size);
  back_to = FUNC16 (xfree, dynsyms);

  dynsym_count = FUNC6 (abfd, dynsyms);
  if (dynsym_count < 0)
    {
      FUNC15 (back_to);
      return;
    }

  /* Enter dynamic symbols into the minimal symbol table
     if this is a stripped executable.  */
  if (FUNC14 (abfd) <= 0)
    {
      symptr = dynsyms;
      for (counter = 0; counter < dynsym_count; counter++, symptr++)
	{
	  asymbol *sym = *symptr;
	  asection *sec;
	  int type;

	  sec = FUNC12 (sym);

	  /* BFD symbols are section relative.  */
	  sym_value = sym->value + sec->vma;

	  if (FUNC13 (abfd, sec) & SEC_CODE)
	    {
	      sym_value += FUNC0 (objfile->section_offsets, FUNC3 (objfile));
	      type = N_TEXT;
	    }
	  else if (FUNC13 (abfd, sec) & SEC_DATA)
	    {
	      sym_value += FUNC0 (objfile->section_offsets, FUNC2 (objfile));
	      type = N_DATA;
	    }
	  else if (FUNC13 (abfd, sec) & SEC_ALLOC)
	    {
	      sym_value += FUNC0 (objfile->section_offsets, FUNC1 (objfile));
	      type = N_BSS;
	    }
	  else
	    continue;

	  if (sym->flags & BSF_GLOBAL)
	    type |= N_EXT;

	  FUNC18 ((char *) FUNC4 (sym), sym_value,
				 type, objfile);
	}
    }

  /* Symbols from shared libraries have a dynamic relocation entry
     that points to the associated slot in the procedure linkage table.
     We make a mininal symbol table entry with type mst_solib_trampoline
     at the address in the procedure linkage table.  */
  dynrel_size = FUNC8 (abfd);
  if (dynrel_size < 0)
    {
      FUNC15 (back_to);
      return;
    }

  dynrels = (arelent **) FUNC19 (dynrel_size);
  FUNC16 (xfree, dynrels);

  dynrel_count = FUNC5 (abfd, dynrels, dynsyms);
  if (dynrel_count < 0)
    {
      FUNC15 (back_to);
      return;
    }

  for (counter = 0, relptr = dynrels;
       counter < dynrel_count;
       counter++, relptr++)
    {
      arelent *rel = *relptr;
      CORE_ADDR address =
      rel->address + FUNC0 (objfile->section_offsets, FUNC2 (objfile));

      switch (FUNC7 (abfd))
	{
	case bfd_arch_sparc:
	  if (rel->howto->type != RELOC_JMP_SLOT)
	    continue;
	  break;
	case bfd_arch_m68k:
	  /* `16' is the type BFD produces for a jump table relocation.  */
	  if (rel->howto->type != 16)
	    continue;

	  /* Adjust address in the jump table to point to
	     the start of the bsr instruction.  */
	  address -= 2;
	  break;
	default:
	  continue;
	}

      name = (char *) FUNC4 (*rel->sym_ptr_ptr);
      FUNC17 (name, address, mst_solib_trampoline,
				  objfile);
    }

  FUNC15 (back_to);
}