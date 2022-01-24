#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int e_shoff; int e_shstrndx; int e_shnum; } ;
struct TYPE_6__ {int sh_offset; int sh_name; int sh_type; int sh_size; int sh_flags; int sh_info; int sh_addralign; } ;
typedef  size_t Elf64_Word ;
typedef  size_t Elf32_Xword ;
typedef  int Elf32_Word ;
typedef  int /*<<< orphan*/  Elf32_Sym ;
typedef  TYPE_1__ Elf32_Shdr ;
typedef  int /*<<< orphan*/  Elf32_Rela ;
typedef  int /*<<< orphan*/  Elf32_Rel ;
typedef  size_t Elf32_Off ;
typedef  TYPE_2__ Elf32_Ehdr ;

/* Variables and functions */
 size_t SHF_ALLOC ; 
 int SHT_NOBITS ; 
 int SHT_REL ; 
 int SHT_RELA ; 
#define  SHT_STRTAB 129 
#define  SHT_SYMTAB 128 
 int* FUNC0 (int,int) ; 
 int csum ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int,void*,size_t,int /*<<< orphan*/  const*,size_t,TYPE_1__*,int,int*,char const*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int,void*,size_t,int /*<<< orphan*/  const*,size_t,TYPE_1__*,int,int*,char const*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int*) ; 
 int FUNC7 (int*) ; 
 int is_verbose ; 
 int /*<<< orphan*/  outfd ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 char const* xcsum ; 

__attribute__((used)) static void FUNC16(void *buffer, size_t len, Elf32_Ehdr *hdr)
{
	const Elf32_Sym *symbols;
	Elf32_Shdr *sections;
	const char *secstrings, *strings;
	size_t nsyms, nstrings;
	int loop, shnum, *canonlist, *canonmap, canon, changed, tmp;

	sections = buffer + FUNC7(&hdr->e_shoff);
	secstrings = buffer + FUNC7(&sections[FUNC6(&hdr->e_shstrndx)].sh_offset);
	shnum = FUNC6(&hdr->e_shnum);

	/* find the symbol table and the string table and produce a list of
	 * index numbers of sections that contribute to the kernel's module
	 * image
	 */
	canonlist = FUNC0(sizeof(int), shnum * 2);
	if (!canonlist) {
		FUNC8("calloc");
		FUNC1(1);
	}
	canonmap = canonlist + shnum;
	canon = 0;

	symbols = NULL;
	strings = NULL;
	nstrings = 0;
	nsyms = 0;

	for (loop = 1; loop < shnum; loop++) {
		const char *sh_name = secstrings + FUNC7(&sections[loop].sh_name);
		Elf32_Word  sh_type	= FUNC7(&sections[loop].sh_type);
		Elf32_Xword sh_size	= FUNC7(&sections[loop].sh_size);
		Elf32_Xword sh_flags	= FUNC7(&sections[loop].sh_flags);
		Elf64_Word  sh_info	= FUNC7(&sections[loop].sh_info);
		Elf32_Off   sh_offset	= FUNC7(&sections[loop].sh_offset);
		void *data = buffer + sh_offset;

		/* quick sanity check */
		if (sh_type != SHT_NOBITS && len < sh_offset + sh_size) {
			FUNC4(stderr, "Section goes beyond EOF\n");
			FUNC1(3);
		}

		/* we only need to canonicalise allocatable sections */
		if (sh_flags & SHF_ALLOC)
			canonlist[canon++] = loop;
		else if ((sh_type == SHT_REL || sh_type == SHT_RELA) &&
			 FUNC7(&sections[sh_info].sh_flags) & SHF_ALLOC)
			canonlist[canon++] = loop;

		/* keep track of certain special sections */
		switch (sh_type) {
		case SHT_SYMTAB:
			if (FUNC11(sh_name, ".symtab") == 0) {
				symbols = data;
				nsyms = sh_size / sizeof(Elf32_Sym);
			}
			break;

		case SHT_STRTAB:
			if (FUNC11(sh_name, ".strtab") == 0) {
				strings = data;
				nstrings = sh_size;
			}
			break;

		default:
			break;
		}
	}

	if (!symbols) {
		FUNC4(stderr, "Couldn't locate symbol table\n");
		FUNC1(3);
	}

	if (!strings) {
		FUNC4(stderr, "Couldn't locate strings table\n");
		FUNC1(3);
	}

	/* canonicalise the index numbers of the contributing section */
	do {
		changed = 0;

		for (loop = 0; loop < canon - 1; loop++) {
			const char *x = secstrings + FUNC7(&sections[canonlist[loop + 0]].sh_name);
			const char *y = secstrings + FUNC7(&sections[canonlist[loop + 1]].sh_name);
			if (FUNC11(x, y) > 0) {
				tmp = canonlist[loop + 0];
				canonlist[loop + 0] = canonlist[loop + 1];
				canonlist[loop + 1] = tmp;
				changed = 1;
			}
		}

	} while (changed);

	for (loop = 0; loop < canon; loop++)
		canonmap[canonlist[loop]] = loop + 1;

	if (is_verbose > 1) {
		FUNC9("\nSection canonicalisation map:\n");
		for (loop = 1; loop < shnum; loop++) {
			const char *x = secstrings + FUNC7(&sections[loop].sh_name);
			FUNC9("%4d %s\n", canonmap[loop], x);
		}

		FUNC9("\nAllocated section list in canonical order:\n");
		for (loop = 0; loop < canon; loop++) {
			const char *x = secstrings + FUNC7(&sections[canonlist[loop]].sh_name);
			FUNC9("%4d %s\n", canonlist[loop], x);
		}
	}

	/* iterate through the section table looking for sections we want to
	 * contribute to the signature */
	FUNC13("\n");
	FUNC13("CAN FILE POS CS SECT NAME\n");
	FUNC13("=== ======== == ==== ==============================\n");

	for (loop = 0; loop < canon; loop++) {
		int sect = canonlist[loop];
		const char *sh_name = secstrings + FUNC7(&sections[sect].sh_name);
		Elf32_Word  sh_type	= FUNC7(&sections[sect].sh_type);
		Elf32_Xword sh_size	= FUNC7(&sections[sect].sh_size);
		Elf32_Xword sh_flags	= FUNC7(&sections[sect].sh_flags);
		Elf32_Word  sh_info	= FUNC7(&sections[sect].sh_info);
		Elf32_Off   sh_offset	= FUNC7(&sections[sect].sh_offset);
		void *data = buffer + sh_offset;

		csum = 0;

		/* quick sanity check */
		if (sh_type != SHT_NOBITS && len < sh_offset + sh_size) {
			FUNC4(stderr, "section goes beyond EOF\n");
			FUNC1(3);
		}

		/* include canonicalised relocation sections */
		if (sh_type == SHT_REL || sh_type == SHT_RELA) {
			Elf32_Word canon_sh_info;

			if (sh_info <= 0 && sh_info >= hdr->e_shnum) {
				FUNC4(stderr,
					"Invalid ELF - REL/RELA sh_info does"
					" not refer to a valid section\n");
				FUNC1(3);
			}

			FUNC13("%3u %08lx ", loop, FUNC5(outfd));

			FUNC10(&canon_sh_info, canonmap[sh_info]);

			/* write out selected portions of the section header */
			FUNC14(sh_name, FUNC12(sh_name));
			FUNC15(sections[sect].sh_type);
			FUNC15(sections[sect].sh_flags);
			FUNC15(sections[sect].sh_size);
			FUNC15(sections[sect].sh_addralign);
			FUNC15(canon_sh_info);

			if (sh_type == SHT_RELA)
				FUNC3(buffer, sect, sh_info,
						   data, sh_size / sizeof(Elf32_Rela),
						   symbols, nsyms,
						   sections, shnum, canonmap,
						   strings, nstrings,
						   sh_name);
			else
				FUNC2(buffer, sect, sh_info,
						  data, sh_size / sizeof(Elf32_Rel),
						  symbols, nsyms,
						  sections, shnum, canonmap,
						  strings, nstrings,
						  sh_name);
			continue;
		}

		/* include the headers of BSS sections */
		if (sh_type == SHT_NOBITS && sh_flags & SHF_ALLOC) {
			FUNC13("%3u %08lx ", loop, FUNC5(outfd));

			/* write out selected portions of the section header */
			FUNC14(sh_name, FUNC12(sh_name));
			FUNC15(sections[sect].sh_type);
			FUNC15(sections[sect].sh_flags);
			FUNC15(sections[sect].sh_size);
			FUNC15(sections[sect].sh_addralign);

			FUNC13("%02x %4d %s\n", csum, sect, sh_name);
		}

		/* include allocatable loadable sections */
		if (sh_type != SHT_NOBITS && sh_flags & SHF_ALLOC)
			goto include_section;

		/* not this section */
		continue;

	include_section:
		FUNC13("%3u %08lx ", loop, FUNC5(outfd));

		/* write out selected portions of the section header */
		FUNC14(sh_name, FUNC12(sh_name));
		FUNC15(sections[sect].sh_type);
		FUNC15(sections[sect].sh_flags);
		FUNC15(sections[sect].sh_size);
		FUNC15(sections[sect].sh_addralign);

		/* write out the section data */
		FUNC14(data, sh_size);

		FUNC13("%02x %4d %s\n", csum, sect, sh_name);
	}

	FUNC13("%08lx         (%lu bytes csum 0x%02x)\n",
		FUNC5(outfd), FUNC5(outfd), xcsum);
}