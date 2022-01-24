#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_vma ;
struct TYPE_5__ {scalar_t__* e_ident; scalar_t__ e_shnum; scalar_t__ e_shstrndx; scalar_t__ e_shentsize; scalar_t__ e_phnum; scalar_t__ e_phentsize; scalar_t__ e_ehsize; int /*<<< orphan*/  e_machine; scalar_t__ e_flags; scalar_t__ e_shoff; scalar_t__ e_phoff; scalar_t__ e_entry; scalar_t__ e_version; int /*<<< orphan*/  e_type; } ;
struct TYPE_4__ {scalar_t__ sh_size; scalar_t__ sh_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEC ; 
 size_t EI_ABIVERSION ; 
 size_t EI_CLASS ; 
 size_t EI_DATA ; 
 size_t EI_MAG0 ; 
 size_t EI_MAG1 ; 
 size_t EI_MAG2 ; 
 size_t EI_MAG3 ; 
 int EI_NIDENT ; 
 size_t EI_OSABI ; 
 size_t EI_VERSION ; 
 scalar_t__ ELFMAG0 ; 
 scalar_t__ ELFMAG1 ; 
 scalar_t__ ELFMAG2 ; 
 scalar_t__ ELFMAG3 ; 
 int EV_CURRENT ; 
 int EV_NONE ; 
 int /*<<< orphan*/  PREFIX_HEX ; 
 scalar_t__ SHN_HIRESERVE ; 
 scalar_t__ SHN_LORESERVE ; 
 scalar_t__ SHN_UNDEF ; 
 scalar_t__ SHN_XINDEX ; 
 char* FUNC0 (char*) ; 
 scalar_t__ do_header ; 
 TYPE_3__ elf_header ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char,int /*<<< orphan*/ ) ; 
 TYPE_1__* section_headers ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC12 (void)
{
  if (   elf_header.e_ident[EI_MAG0] != ELFMAG0
      || elf_header.e_ident[EI_MAG1] != ELFMAG1
      || elf_header.e_ident[EI_MAG2] != ELFMAG2
      || elf_header.e_ident[EI_MAG3] != ELFMAG3)
    {
      FUNC1
	(FUNC0("Not an ELF file - it has the wrong magic bytes at the start\n"));
      return 0;
    }

  if (do_header)
    {
      int i;

      FUNC10 (FUNC0("ELF Header:\n"));
      FUNC10 (FUNC0("  Magic:   "));
      for (i = 0; i < EI_NIDENT; i++)
	FUNC10 ("%2.2x ", elf_header.e_ident[i]);
      FUNC10 ("\n");
      FUNC10 (FUNC0("  Class:                             %s\n"),
	      FUNC4 (elf_header.e_ident[EI_CLASS]));
      FUNC10 (FUNC0("  Data:                              %s\n"),
	      FUNC3 (elf_header.e_ident[EI_DATA]));
      FUNC10 (FUNC0("  Version:                           %d %s\n"),
	      elf_header.e_ident[EI_VERSION],
	      (elf_header.e_ident[EI_VERSION] == EV_CURRENT
	       ? "(current)"
	       : (elf_header.e_ident[EI_VERSION] != EV_NONE
		  ? "<unknown: %lx>"
		  : "")));
      FUNC10 (FUNC0("  OS/ABI:                            %s\n"),
	      FUNC8 (elf_header.e_ident[EI_OSABI]));
      FUNC10 (FUNC0("  ABI Version:                       %d\n"),
	      elf_header.e_ident[EI_ABIVERSION]);
      FUNC10 (FUNC0("  Type:                              %s\n"),
	      FUNC5 (elf_header.e_type));
      FUNC10 (FUNC0("  Machine:                           %s\n"),
	      FUNC7 (elf_header.e_machine));
      FUNC10 (FUNC0("  Version:                           0x%lx\n"),
	      (unsigned long) elf_header.e_version);

      FUNC10 (FUNC0("  Entry point address:               "));
      FUNC9 ((bfd_vma) elf_header.e_entry, PREFIX_HEX);
      FUNC10 (FUNC0("\n  Start of program headers:          "));
      FUNC9 ((bfd_vma) elf_header.e_phoff, DEC);
      FUNC10 (FUNC0(" (bytes into file)\n  Start of section headers:          "));
      FUNC9 ((bfd_vma) elf_header.e_shoff, DEC);
      FUNC10 (FUNC0(" (bytes into file)\n"));

      FUNC10 (FUNC0("  Flags:                             0x%lx%s\n"),
	      (unsigned long) elf_header.e_flags,
	      FUNC6 (elf_header.e_flags, elf_header.e_machine));
      FUNC10 (FUNC0("  Size of this header:               %ld (bytes)\n"),
	      (long) elf_header.e_ehsize);
      FUNC10 (FUNC0("  Size of program headers:           %ld (bytes)\n"),
	      (long) elf_header.e_phentsize);
      FUNC10 (FUNC0("  Number of program headers:         %ld\n"),
	      (long) elf_header.e_phnum);
      FUNC10 (FUNC0("  Size of section headers:           %ld (bytes)\n"),
	      (long) elf_header.e_shentsize);
      FUNC10 (FUNC0("  Number of section headers:         %ld"),
	      (long) elf_header.e_shnum);
      if (section_headers != NULL && elf_header.e_shnum == 0)
	FUNC10 (" (%ld)", (long) section_headers[0].sh_size);
      FUNC11 ('\n', stdout);
      FUNC10 (FUNC0("  Section header string table index: %ld"),
	      (long) elf_header.e_shstrndx);
      if (section_headers != NULL && elf_header.e_shstrndx == SHN_XINDEX)
	FUNC10 (" (%ld)", (long) section_headers[0].sh_link);
      else if (elf_header.e_shstrndx != SHN_UNDEF
	       && (elf_header.e_shstrndx >= elf_header.e_shnum
		   || (elf_header.e_shstrndx >= SHN_LORESERVE
		       && elf_header.e_shstrndx <= SHN_HIRESERVE)))
	FUNC10 (" <corrupt: out of range>");
      FUNC11 ('\n', stdout);
    }

  if (section_headers != NULL)
    {
      if (elf_header.e_shnum == 0)
	elf_header.e_shnum = section_headers[0].sh_size;
      if (elf_header.e_shstrndx == SHN_XINDEX)
	elf_header.e_shstrndx = section_headers[0].sh_link;
      else if (elf_header.e_shstrndx != SHN_UNDEF
	       && (elf_header.e_shstrndx >= elf_header.e_shnum
		   || (elf_header.e_shstrndx >= SHN_LORESERVE
		       && elf_header.e_shstrndx <= SHN_HIRESERVE)))
	elf_header.e_shstrndx = SHN_UNDEF;
      FUNC2 (section_headers);
      section_headers = NULL;
    }

  return 1;
}