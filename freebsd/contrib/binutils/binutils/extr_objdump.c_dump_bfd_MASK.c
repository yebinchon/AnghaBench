#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int bfd_boolean ;
struct TYPE_24__ {int flags; TYPE_1__* xvec; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_23__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int HAS_RELOC ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  adjust_addresses ; 
 scalar_t__ adjust_section_vma ; 
 int /*<<< orphan*/  bfd_demangle ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 char* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ disassemble ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ dump_ar_hdrs ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ dump_debugging ; 
 scalar_t__ dump_debugging_tags ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ dump_dwarf_section_info ; 
 scalar_t__ dump_dynamic_reloc_info ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ dump_dynamic_symtab ; 
 scalar_t__ dump_file_header ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ dump_private_headers ; 
 scalar_t__ dump_reloc_info ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ dump_section_contents ; 
 scalar_t__ dump_section_headers ; 
 scalar_t__ dump_stab_section_info ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_symtab ; 
 scalar_t__ dynsymcount ; 
 int /*<<< orphan*/ * dynsyms ; 
 int exit_status ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,void*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char) ; 
 void* FUNC21 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ symcount ; 
 int /*<<< orphan*/ * syms ; 
 scalar_t__ synthcount ; 
 int /*<<< orphan*/ * synthsyms ; 

__attribute__((used)) static void
FUNC24 (bfd *abfd)
{
  /* If we are adjusting section VMA's, change them all now.  Changing
     the BFD information is a hack.  However, we must do it, or
     bfd_find_nearest_line will not do the right thing.  */
  if (adjust_section_vma != 0)
    {
      bfd_boolean has_reloc = (abfd->flags & HAS_RELOC);
      FUNC4 (abfd, adjust_addresses, &has_reloc);
    }

  if (! dump_debugging_tags)
    FUNC19 (FUNC0("\n%s:     file format %s\n"), FUNC2 (abfd),
	    abfd->xvec->name);
  if (dump_ar_hdrs)
    FUNC17 (stdout, abfd, TRUE);
  if (dump_file_header)
    FUNC6 (abfd);
  if (dump_private_headers)
    FUNC7 (abfd);
  if (! dump_debugging_tags)
    FUNC20 ('\n');
  if (dump_section_headers)
    FUNC11 (abfd);

  if (dump_symtab
      || dump_reloc_info
      || disassemble
      || dump_debugging
      || dump_dwarf_section_info)
    syms = FUNC23 (abfd);
  if (dump_dynamic_symtab || dump_dynamic_reloc_info
      || (disassemble && FUNC1 (abfd) > 0))
    dynsyms = FUNC22 (abfd);
  if (disassemble)
    {
      synthcount = FUNC3 (abfd, symcount, syms,
					     dynsymcount, dynsyms, &synthsyms);
      if (synthcount < 0)
	synthcount = 0;
    }

  if (dump_symtab)
    FUNC14 (abfd, FALSE);
  if (dump_dynamic_symtab)
    FUNC14 (abfd, TRUE);
  if (dump_dwarf_section_info)
    FUNC9 (abfd);
  if (dump_stab_section_info)
    FUNC13 (abfd);
  if (dump_reloc_info && ! disassemble)
    FUNC12 (abfd);
  if (dump_dynamic_reloc_info && ! disassemble)
    FUNC10 (abfd);
  if (dump_section_contents)
    FUNC8 (abfd);
  if (disassemble)
    FUNC5 (abfd);

  if (dump_debugging)
    {
      void *dhandle;

      dhandle = FUNC21 (abfd, syms, symcount);
      if (dhandle != NULL)
	{
	  if (!FUNC18 (stdout, dhandle, abfd, syms,
				     bfd_demangle,
				     dump_debugging_tags ? TRUE : FALSE))
	    {
	      FUNC16 (FUNC0("%s: printing debugging information failed"),
			 FUNC2 (abfd));
	      exit_status = 1;
	    }
	}
    }

  if (syms)
    {
      FUNC15 (syms);
      syms = NULL;
    }

  if (dynsyms)
    {
      FUNC15 (dynsyms);
      dynsyms = NULL;
    }

  if (synthsyms)
    {
      FUNC15 (synthsyms);
      synthsyms = NULL;
    }

  symcount = 0;
  dynsymcount = 0;
  synthcount = 0;
}