#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct elf_info {int size; unsigned int modinfo_len; unsigned int export_sec; unsigned int export_unused_sec; unsigned int export_gpl_sec; unsigned int export_unused_gpl_sec; unsigned int export_gpl_future_sec; unsigned int markers_strings_sec; TYPE_1__* symtab_stop; TYPE_1__* symtab_start; void* strtab; void* modinfo; TYPE_2__* sechdrs; TYPE_3__* hdr; } ;
struct TYPE_7__ {scalar_t__* e_ident; unsigned int e_type; unsigned int e_machine; unsigned int e_version; unsigned int e_entry; unsigned int e_phoff; unsigned int e_shoff; unsigned int e_flags; unsigned int e_ehsize; unsigned int e_phentsize; unsigned int e_phnum; unsigned int e_shentsize; unsigned int e_shnum; unsigned int e_shstrndx; } ;
struct TYPE_6__ {unsigned int sh_name; unsigned int sh_type; unsigned int sh_flags; unsigned int sh_addr; unsigned int sh_offset; unsigned int sh_size; unsigned int sh_link; unsigned int sh_info; unsigned int sh_addralign; unsigned int sh_entsize; } ;
struct TYPE_5__ {unsigned int st_shndx; unsigned int st_name; unsigned int st_value; unsigned int st_size; } ;
typedef  TYPE_1__ Elf_Sym ;
typedef  TYPE_2__ Elf_Shdr ;
typedef  TYPE_3__ Elf_Ehdr ;

/* Variables and functions */
 size_t EI_MAG0 ; 
 size_t EI_MAG1 ; 
 size_t EI_MAG2 ; 
 size_t EI_MAG3 ; 
 scalar_t__ ELFMAG0 ; 
 scalar_t__ ELFMAG1 ; 
 scalar_t__ ELFMAG2 ; 
 scalar_t__ ELFMAG3 ; 
 scalar_t__ SHT_NOBITS ; 
 scalar_t__ SHT_SYMTAB ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_3__* FUNC3 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(struct elf_info *info, const char *filename)
{
	unsigned int i;
	Elf_Ehdr *hdr;
	Elf_Shdr *sechdrs;
	Elf_Sym  *sym;

	hdr = FUNC3(filename, &info->size);
	if (!hdr) {
		FUNC4(filename);
		FUNC1(1);
	}
	info->hdr = hdr;
	if (info->size < sizeof(*hdr)) {
		/* file too small, assume this is an empty .o file */
		return 0;
	}
	/* Is this a valid ELF file? */
	if ((hdr->e_ident[EI_MAG0] != ELFMAG0) ||
	    (hdr->e_ident[EI_MAG1] != ELFMAG1) ||
	    (hdr->e_ident[EI_MAG2] != ELFMAG2) ||
	    (hdr->e_ident[EI_MAG3] != ELFMAG3)) {
		/* Not an ELF file - silently ignore it */
		return 0;
	}
	/* Fix endianness in ELF header */
	hdr->e_type      = FUNC0(hdr->e_type);
	hdr->e_machine   = FUNC0(hdr->e_machine);
	hdr->e_version   = FUNC0(hdr->e_version);
	hdr->e_entry     = FUNC0(hdr->e_entry);
	hdr->e_phoff     = FUNC0(hdr->e_phoff);
	hdr->e_shoff     = FUNC0(hdr->e_shoff);
	hdr->e_flags     = FUNC0(hdr->e_flags);
	hdr->e_ehsize    = FUNC0(hdr->e_ehsize);
	hdr->e_phentsize = FUNC0(hdr->e_phentsize);
	hdr->e_phnum     = FUNC0(hdr->e_phnum);
	hdr->e_shentsize = FUNC0(hdr->e_shentsize);
	hdr->e_shnum     = FUNC0(hdr->e_shnum);
	hdr->e_shstrndx  = FUNC0(hdr->e_shstrndx);
	sechdrs = (void *)hdr + hdr->e_shoff;
	info->sechdrs = sechdrs;

	/* Check if file offset is correct */
	if (hdr->e_shoff > info->size) {
		FUNC2("section header offset=%lu in file '%s' is bigger than "
		      "filesize=%lu\n", (unsigned long)hdr->e_shoff,
		      filename, info->size);
		return 0;
	}

	/* Fix endianness in section headers */
	for (i = 0; i < hdr->e_shnum; i++) {
		sechdrs[i].sh_name      = FUNC0(sechdrs[i].sh_name);
		sechdrs[i].sh_type      = FUNC0(sechdrs[i].sh_type);
		sechdrs[i].sh_flags     = FUNC0(sechdrs[i].sh_flags);
		sechdrs[i].sh_addr      = FUNC0(sechdrs[i].sh_addr);
		sechdrs[i].sh_offset    = FUNC0(sechdrs[i].sh_offset);
		sechdrs[i].sh_size      = FUNC0(sechdrs[i].sh_size);
		sechdrs[i].sh_link      = FUNC0(sechdrs[i].sh_link);
		sechdrs[i].sh_info      = FUNC0(sechdrs[i].sh_info);
		sechdrs[i].sh_addralign = FUNC0(sechdrs[i].sh_addralign);
		sechdrs[i].sh_entsize   = FUNC0(sechdrs[i].sh_entsize);
	}
	/* Find symbol table. */
	for (i = 1; i < hdr->e_shnum; i++) {
		const char *secstrings
			= (void *)hdr + sechdrs[hdr->e_shstrndx].sh_offset;
		const char *secname;
		int nobits = sechdrs[i].sh_type == SHT_NOBITS;

		if (!nobits && sechdrs[i].sh_offset > info->size) {
			FUNC2("%s is truncated. sechdrs[i].sh_offset=%lu > "
			      "sizeof(*hrd)=%zu\n", filename,
			      (unsigned long)sechdrs[i].sh_offset,
			      sizeof(*hdr));
			return 0;
		}
		secname = secstrings + sechdrs[i].sh_name;
		if (FUNC5(secname, ".modinfo") == 0) {
			if (nobits)
				FUNC2("%s has NOBITS .modinfo\n", filename);
			info->modinfo = (void *)hdr + sechdrs[i].sh_offset;
			info->modinfo_len = sechdrs[i].sh_size;
		} else if (FUNC5(secname, "__ksymtab") == 0)
			info->export_sec = i;
		else if (FUNC5(secname, "__ksymtab_unused") == 0)
			info->export_unused_sec = i;
		else if (FUNC5(secname, "__ksymtab_gpl") == 0)
			info->export_gpl_sec = i;
		else if (FUNC5(secname, "__ksymtab_unused_gpl") == 0)
			info->export_unused_gpl_sec = i;
		else if (FUNC5(secname, "__ksymtab_gpl_future") == 0)
			info->export_gpl_future_sec = i;
		else if (FUNC5(secname, "__markers_strings") == 0)
			info->markers_strings_sec = i;

		if (sechdrs[i].sh_type != SHT_SYMTAB)
			continue;

		info->symtab_start = (void *)hdr + sechdrs[i].sh_offset;
		info->symtab_stop  = (void *)hdr + sechdrs[i].sh_offset
			                         + sechdrs[i].sh_size;
		info->strtab       = (void *)hdr +
			             sechdrs[sechdrs[i].sh_link].sh_offset;
	}
	if (!info->symtab_start)
		FUNC2("%s has no symtab?\n", filename);

	/* Fix endianness in symbols */
	for (sym = info->symtab_start; sym < info->symtab_stop; sym++) {
		sym->st_shndx = FUNC0(sym->st_shndx);
		sym->st_name  = FUNC0(sym->st_name);
		sym->st_value = FUNC0(sym->st_value);
		sym->st_size  = FUNC0(sym->st_size);
	}
	return 1;
}