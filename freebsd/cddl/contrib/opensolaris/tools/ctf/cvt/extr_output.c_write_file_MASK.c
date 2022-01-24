#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  size_t off_t ;
typedef  TYPE_1__* caddr_t ;
struct TYPE_25__ {int e_phnum; int e_shnum; int e_shstrndx; size_t e_shoff; scalar_t__ e_phoff; } ;
struct TYPE_24__ {size_t sh_name; scalar_t__ sh_type; size_t sh_addralign; size_t sh_offset; int sh_link; int sh_info; char sh_size; int sh_entsize; } ;
struct TYPE_23__ {size_t st_shndx; } ;
struct TYPE_22__ {int d_align; char d_size; scalar_t__ d_off; struct TYPE_22__* d_buf; int /*<<< orphan*/  d_version; int /*<<< orphan*/  d_type; } ;
typedef  scalar_t__ GElf_Word ;
typedef  TYPE_2__ GElf_Sym ;
typedef  TYPE_3__ GElf_Shdr ;
typedef  int /*<<< orphan*/  GElf_Phdr ;
typedef  TYPE_4__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_1__ Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 char* CTF_ELF_SCN_NAME ; 
 int CTF_KEEP_STABS ; 
 int CTF_USE_DYNSYM ; 
 int /*<<< orphan*/  ELF_C_SET ; 
 int /*<<< orphan*/  ELF_C_WRITE ; 
 int /*<<< orphan*/  ELF_F_LAYOUT ; 
 int /*<<< orphan*/  ELF_T_ADDR ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 size_t SHN_LORESERVE ; 
 scalar_t__ SHT_DYNSYM ; 
 scalar_t__ SHT_NOBITS ; 
 scalar_t__ SHT_PROGBITS ; 
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 scalar_t__ SHT_SYMTAB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 size_t FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,int) ; 
 scalar_t__ FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,char*) ; 
 char FUNC26 (char*) ; 
 scalar_t__ FUNC27 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC28 (char*,char const*,char*) ; 
 void* FUNC29 (char) ; 

__attribute__((used)) static void
FUNC30(Elf *src, const char *srcname, Elf *dst, const char *dstname,
    caddr_t ctfdata, size_t ctfsize, int flags)
{
	GElf_Ehdr sehdr, dehdr;
	Elf_Scn *sscn, *dscn;
	Elf_Data *sdata, *ddata;
	GElf_Shdr shdr;
	GElf_Word symtab_type;
	int symtab_idx = -1;
	off_t new_offset = 0;
	off_t ctfnameoff = 0;
	int dynsym = (flags & CTF_USE_DYNSYM);
	int keep_stabs = (flags & CTF_KEEP_STABS);
	int *secxlate;
	int srcidx, dstidx;
	int curnmoff = 0;
	int changing = 0;
	int pad;
	int i;

	if (FUNC16(dst, FUNC11(src)) == NULL)
		FUNC8(dstname, "Cannot copy ehdr to temp file");
	FUNC12(src, &sehdr);
	FUNC22(&dehdr, &sehdr, sizeof (GElf_Ehdr));
	FUNC18(dst, &dehdr);

	symtab_type = dynsym ? SHT_DYNSYM : SHT_SYMTAB;

	/*
	 * Neither the existing stab sections nor the SUNW_ctf sections (new or
	 * existing) are SHF_ALLOC'd, so they won't be in areas referenced by
	 * program headers.  As such, we can just blindly copy the program
	 * headers from the existing file to the new file.
	 */
	if (sehdr.e_phnum != 0) {
		(void) FUNC1(dst, ELF_C_SET, ELF_F_LAYOUT);
		if (FUNC17(dst, sehdr.e_phnum) == NULL)
			FUNC8(dstname, "Cannot make phdrs in temp file");

		for (i = 0; i < sehdr.e_phnum; i++) {
			GElf_Phdr phdr;

			FUNC13(src, i, &phdr);
			FUNC19(dst, i, &phdr);
		}
	}

	secxlate = FUNC29(sizeof (int) * sehdr.e_shnum);
	for (srcidx = dstidx = 0; srcidx < sehdr.e_shnum; srcidx++) {
		Elf_Scn *scn = FUNC3(src, srcidx);
		GElf_Shdr shdr1;
		char *sname;

		FUNC14(scn, &shdr1);
		sname = FUNC6(src, sehdr.e_shstrndx, shdr1.sh_name);
		if (sname == NULL) {
			FUNC8(srcname, "Can't find string at %u",
			    shdr1.sh_name);
		}

		if (FUNC24(sname, CTF_ELF_SCN_NAME) == 0) {
			secxlate[srcidx] = -1;
		} else if (!keep_stabs &&
		    (FUNC27(sname, ".stab", 5) == 0 ||
		    FUNC27(sname, ".debug", 6) == 0 ||
		    FUNC27(sname, ".rel.debug", 10) == 0 ||
		    FUNC27(sname, ".rela.debug", 11) == 0)) {
			secxlate[srcidx] = -1;
		} else if (dynsym && shdr1.sh_type == SHT_SYMTAB) {
			/*
			 * If we're building CTF against the dynsym,
			 * we'll rip out the symtab so debuggers aren't
			 * confused.
			 */
			secxlate[srcidx] = -1;
		} else {
			secxlate[srcidx] = dstidx++;
			curnmoff += FUNC26(sname) + 1;
		}

		new_offset = (off_t)dehdr.e_phoff;
	}

	for (srcidx = 1; srcidx < sehdr.e_shnum; srcidx++) {
		char *sname;

		sscn = FUNC3(src, srcidx);
		FUNC14(sscn, &shdr);

		if (secxlate[srcidx] == -1) {
			changing = 1;
			continue;
		}

		dscn = FUNC5(dst);

		/*
		 * If this file has program headers, we need to explicitly lay
		 * out sections.  If none of the sections prior to this one have
		 * been removed, then we can just use the existing location.  If
		 * one or more sections have been changed, then we need to
		 * adjust this one to avoid holes.
		 */
		if (changing && sehdr.e_phnum != 0) {
			pad = new_offset % shdr.sh_addralign;

			if (pad)
				new_offset += shdr.sh_addralign - pad;
			shdr.sh_offset = new_offset;
		}

		shdr.sh_link = secxlate[shdr.sh_link];

		if (shdr.sh_type == SHT_REL || shdr.sh_type == SHT_RELA)
			shdr.sh_info = secxlate[shdr.sh_info];

		sname = FUNC6(src, sehdr.e_shstrndx, shdr.sh_name);
		if (sname == NULL) {
			FUNC8(srcname, "Can't find string at %u",
			    shdr.sh_name);
		}

#ifndef illumos
		if (FUNC20(dscn, &shdr) == 0)
			FUNC8(dstname, "Cannot update sect %s", sname);
#endif

		if ((sdata = FUNC2(sscn, NULL)) == NULL)
			FUNC8(srcname, "Cannot get sect %s data", sname);
		if ((ddata = FUNC4(dscn)) == NULL)
			FUNC8(dstname, "Can't make sect %s data", sname);
#ifdef illumos
		bcopy(sdata, ddata, sizeof (Elf_Data));
#else
		/*
		 * FreeBSD's Elf_Data has private fields which the
		 * elf_* routines manage. Simply copying the 
		 * entire structure corrupts the data. So we need
		 * to copy the public fields explictly.
		 */
		ddata->d_align = sdata->d_align;
		ddata->d_off = sdata->d_off;
		ddata->d_size = sdata->d_size;
		ddata->d_type = sdata->d_type;
		ddata->d_version = sdata->d_version;
#endif

		if (srcidx == sehdr.e_shstrndx) {
			char seclen = FUNC26(CTF_ELF_SCN_NAME);

			ddata->d_buf = FUNC29(ddata->d_size + shdr.sh_size +
			    seclen + 1);
			FUNC0(sdata->d_buf, ddata->d_buf, shdr.sh_size);
			FUNC25((caddr_t)ddata->d_buf + shdr.sh_size,
			    CTF_ELF_SCN_NAME);
			ctfnameoff = (off_t)shdr.sh_size;
			shdr.sh_size += seclen + 1;
			ddata->d_size += seclen + 1;

			if (sehdr.e_phnum != 0)
				changing = 1;
		}

		if (shdr.sh_type == symtab_type && shdr.sh_entsize != 0) {
			int nsym = shdr.sh_size / shdr.sh_entsize;

			symtab_idx = secxlate[srcidx];

			ddata->d_buf = FUNC29(shdr.sh_size);
			FUNC0(sdata->d_buf, ddata->d_buf, shdr.sh_size);

			for (i = 0; i < nsym; i++) {
				GElf_Sym sym;
				short newscn;

				if (FUNC15(ddata, i, &sym) == NULL)
					FUNC23("Could not get symbol %d\n",i);

				if (sym.st_shndx >= SHN_LORESERVE)
					continue;

				if ((newscn = secxlate[sym.st_shndx]) !=
				    sym.st_shndx) {
					sym.st_shndx =
					    (newscn == -1 ? 1 : newscn);

					FUNC21(ddata, i, &sym);
				}
			}
		}

#ifndef illumos
		if (ddata->d_buf == NULL && sdata->d_buf != NULL) {
			ddata->d_buf = FUNC29(shdr.sh_size);
			FUNC0(sdata->d_buf, ddata->d_buf, shdr.sh_size);
		}
#endif

		if (FUNC20(dscn, &shdr) == 0)
			FUNC8(dstname, "Cannot update sect %s", sname);

		new_offset = (off_t)shdr.sh_offset;
		if (shdr.sh_type != SHT_NOBITS)
			new_offset += shdr.sh_size;
	}

	if (symtab_idx == -1) {
		FUNC28("%s: Cannot find %s section\n", srcname,
		    dynsym ? "SHT_DYNSYM" : "SHT_SYMTAB");
	}

	/* Add the ctf section */
	dscn = FUNC5(dst);
	FUNC14(dscn, &shdr);
	shdr.sh_name = ctfnameoff;
	shdr.sh_type = SHT_PROGBITS;
	shdr.sh_size = ctfsize;
	shdr.sh_link = symtab_idx;
	shdr.sh_addralign = 4;
	if (changing && sehdr.e_phnum != 0) {
		pad = new_offset % shdr.sh_addralign;

		if (pad)
			new_offset += shdr.sh_addralign - pad;

		shdr.sh_offset = new_offset;
		new_offset += shdr.sh_size;
	}

	ddata = FUNC4(dscn);
	ddata->d_buf = ctfdata;
	ddata->d_size = ctfsize;
	ddata->d_align = shdr.sh_addralign;
	ddata->d_off = 0;

	FUNC20(dscn, &shdr);

	/* update the section header location */
	if (sehdr.e_phnum != 0) {
		size_t align = FUNC10(dst, ELF_T_ADDR, 1, EV_CURRENT);
		size_t r = new_offset % align;

		if (r)
			new_offset += align - r;

		dehdr.e_shoff = new_offset;
	}

	/* commit to disk */
	dehdr.e_shstrndx = secxlate[sehdr.e_shstrndx];
	FUNC18(dst, &dehdr);
	if (FUNC7(dst, ELF_C_WRITE) < 0)
		FUNC8(dstname, "Cannot finalize temp file");

	FUNC9(secxlate);
}