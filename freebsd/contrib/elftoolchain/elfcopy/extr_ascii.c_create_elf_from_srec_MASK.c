#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct section {int /*<<< orphan*/  off; int /*<<< orphan*/  sz; } ;
struct elfcopy {int flags; int /*<<< orphan*/  eout; TYPE_2__* shstrtab; int /*<<< orphan*/  oem; int /*<<< orphan*/  oed; int /*<<< orphan*/  oec; } ;
struct TYPE_6__ {int /*<<< orphan*/ * os; scalar_t__ off; } ;
struct TYPE_5__ {int /*<<< orphan*/  e_shoff; scalar_t__ e_entry; int /*<<< orphan*/  e_type; int /*<<< orphan*/  e_machine; int /*<<< orphan*/ * e_ident; } ;
typedef  TYPE_1__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t EI_CLASS ; 
 size_t EI_DATA ; 
 size_t EI_OSABI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ELFOSABI_NONE ; 
 int /*<<< orphan*/  ELF_C_WRITE ; 
 int /*<<< orphan*/  ELF_T_EHDR ; 
 int /*<<< orphan*/  ELF_T_SHDR ; 
 int /*<<< orphan*/  ET_REL ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int RELOCATABLE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SHN_ABS ; 
 int /*<<< orphan*/  STB_GLOBAL ; 
 int /*<<< orphan*/  STT_NOTYPE ; 
 int SYMTAB_EXIST ; 
 int _DATA_BUFSZ ; 
 int _LINE_BUFSZ ; 
 int /*<<< orphan*/  FUNC1 (struct elfcopy*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct section*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct elfcopy*) ; 
 int /*<<< orphan*/  FUNC4 (struct elfcopy*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct section*) ; 
 int /*<<< orphan*/  FUNC16 (struct elfcopy*) ; 
 int /*<<< orphan*/  FUNC17 (struct elfcopy*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (struct elfcopy*) ; 
 struct section* FUNC24 (struct elfcopy*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct elfcopy*,TYPE_2__*,int) ; 
 struct section* FUNC26 (struct elfcopy*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (struct elfcopy*) ; 
 scalar_t__ FUNC28 (char*,char*,scalar_t__*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC29 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (struct elfcopy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 

void
FUNC33(struct elfcopy *ecp, int ifd)
{
	char line[_LINE_BUFSZ], name[_LINE_BUFSZ];
	uint8_t data[_DATA_BUFSZ];
	GElf_Ehdr oeh;
	struct section *s, *shtab;
	FILE *ifp;
	uint64_t addr, entry, off, sec_addr;
	uintmax_t st_value;
	size_t sz;
	int _ifd, first, sec_index, in_symtab, symtab_created;
	char *rlt;
	char type;

	if ((_ifd = FUNC5(ifd)) < 0)
		FUNC9(EXIT_FAILURE, "dup failed");
	if ((ifp = FUNC12(_ifd, "r")) == NULL)
		FUNC9(EXIT_FAILURE, "fdopen failed");

	/* Create EHDR for output .o file. */
	if (FUNC21(ecp->eout, ecp->oec) == NULL)
		FUNC10(EXIT_FAILURE, "gelf_newehdr failed: %s",
		    FUNC6(-1));
	if (FUNC20(ecp->eout, &oeh) == NULL)
		FUNC10(EXIT_FAILURE, "gelf_getehdr() failed: %s",
		    FUNC6(-1));

	/* Initialise e_ident fields. */
	oeh.e_ident[EI_CLASS] = ecp->oec;
	oeh.e_ident[EI_DATA] = ecp->oed;
	/*
	 * TODO: Set OSABI according to the OS platform where elfcopy(1)
	 * was build. (probably)
	 */
	oeh.e_ident[EI_OSABI] = ELFOSABI_NONE;
	oeh.e_machine = ecp->oem;
	oeh.e_type = ET_REL;
	oeh.e_entry = 0;

	ecp->flags |= RELOCATABLE;

	/* Create .shstrtab section */
	FUNC23(ecp);
	ecp->shstrtab->off = 0;

	/* Data sections are inserted after EHDR. */
	off = FUNC19(ecp->eout, ELF_T_EHDR, 1, EV_CURRENT);
	if (off == 0)
		FUNC10(EXIT_FAILURE, "gelf_fsize() failed: %s", FUNC6(-1));

	/* Create data sections. */
	s = NULL;
	first = 1;
	sec_index = 1;
	sec_addr = entry = 0;
	while (FUNC14(line, _LINE_BUFSZ, ifp) != NULL) {
		sz = 0;
		if (line[0] == '\r' || line[0] == '\n')
			continue;
		if (line[0] == '$' && line[1] == '$') {
			ecp->flags |= SYMTAB_EXIST;
			while ((rlt = FUNC14(line, _LINE_BUFSZ, ifp)) != NULL) {
				if (line[0] == '$' && line[1] == '$')
					break;
			}
			if (rlt == NULL)
				break;
			continue;
		}
		if (line[0] != 'S' || line[1] < '0' || line[1] > '9') {
			FUNC32("Invalid srec record");
			continue;
		}
		if (FUNC28(line, &type, &addr, data, &sz) < 0) {
			FUNC32("Invalid srec record or mismatched checksum");
			continue;
		}
		switch (type) {
		case '1':
		case '2':
		case '3':
			if (sz == 0)
				break;
			if (first || sec_addr != addr) {
				if (s != NULL)
					FUNC15(s);
				s = FUNC26(ecp, sec_index, off,
				    addr);
				if (s == NULL) {
					FUNC32("new_data_section failed");
					break;
				}
				sec_index++;
				sec_addr = addr;
				first = 0;
			}
			FUNC2(s, data, sz);
			off += sz;
			sec_addr += sz;
			break;
		case '7':
		case '8':
		case '9':
			entry = addr;
			break;
		default:
			break;
		}
	}
	if (s != NULL)
		FUNC15(s);
	if (FUNC13(ifp))
		FUNC31("fgets failed");

	/* Insert .shstrtab after data sections. */
	if ((ecp->shstrtab->os = FUNC7(ecp->eout)) == NULL)
		FUNC10(EXIT_FAILURE, "elf_newscn failed: %s",
		    FUNC6(-1));
	FUNC25(ecp, ecp->shstrtab, 1);

	/* Insert section header table here. */
	shtab = FUNC24(ecp, 1);

	/*
	 * Rescan and create symbol table if we found '$$' section in
	 * the first scan.
	 */
	symtab_created = 0;
	in_symtab = 0;
	if (ecp->flags & SYMTAB_EXIST) {
		if (FUNC18(ifp, 0, SEEK_SET) < 0) {
			FUNC31("fseek failed");
			ecp->flags &= ~SYMTAB_EXIST;
			goto done;
		}
		while (FUNC14(line, _LINE_BUFSZ, ifp) != NULL) {
			if (in_symtab) {
				if (line[0] == '$' && line[1] == '$') {
					in_symtab = 0;
					continue;
				}
				if (FUNC29(line, "%s $%jx", name,
				    &st_value) != 2) {
					FUNC32("Invalid symbolsrec record");
					continue;
				}
				if (!symtab_created) {
					FUNC3(ecp);
					symtab_created = 1;
				}
				FUNC1(ecp, name, st_value, 0, SHN_ABS,
				    FUNC0(STB_GLOBAL, STT_NOTYPE), 0, 1);
			}
			if (line[0] == '$' && line[1] == '$') {
				in_symtab = 1;
				continue;
			}
		}
	}
	if (FUNC13(ifp))
		FUNC31("fgets failed");
	if (symtab_created) {
		FUNC16(ecp);
		FUNC4(ecp);
		/* Count in .symtab and .strtab section headers.  */
		shtab->sz += FUNC19(ecp->eout, ELF_T_SHDR, 2, EV_CURRENT);
	} else
		ecp->flags &= ~SYMTAB_EXIST;

done:
	FUNC11(ifp);

	/* Set entry point. */
	oeh.e_entry = entry;

	/*
	 * Write the underlying ehdr. Note that it should be called
	 * before elf_setshstrndx() since it will overwrite e->e_shstrndx.
	 */
	if (FUNC22(ecp->eout, &oeh) == 0)
		FUNC10(EXIT_FAILURE, "gelf_update_ehdr() failed: %s",
		    FUNC6(-1));

	/* Update sh_name pointer for each section header entry. */
	FUNC30(ecp, 0);

	/* Renew oeh to get the updated e_shstrndx. */
	if (FUNC20(ecp->eout, &oeh) == NULL)
		FUNC10(EXIT_FAILURE, "gelf_getehdr() failed: %s",
		    FUNC6(-1));

	/* Resync section offsets. */
	FUNC27(ecp);

	/* Store SHDR offset in EHDR. */
	oeh.e_shoff = shtab->off;

	/* Update ehdr since we modified e_shoff. */
	if (FUNC22(ecp->eout, &oeh) == 0)
		FUNC10(EXIT_FAILURE, "gelf_update_ehdr() failed: %s",
		    FUNC6(-1));

	/* Write out the output elf object. */
	if (FUNC8(ecp->eout, ELF_C_WRITE) < 0)
		FUNC10(EXIT_FAILURE, "elf_update() failed: %s",
		    FUNC6(-1));

	/* Release allocated resource. */
	FUNC17(ecp);
}