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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct section {int /*<<< orphan*/  off; } ;
struct elfcopy {int /*<<< orphan*/  eout; TYPE_2__* shstrtab; int /*<<< orphan*/  flags; int /*<<< orphan*/  oem; int /*<<< orphan*/  oed; int /*<<< orphan*/  oec; } ;
struct TYPE_6__ {int /*<<< orphan*/ * os; scalar_t__ off; } ;
struct TYPE_5__ {int /*<<< orphan*/  e_shoff; scalar_t__ e_entry; int /*<<< orphan*/  e_type; int /*<<< orphan*/  e_machine; int /*<<< orphan*/ * e_ident; } ;
typedef  TYPE_1__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t EI_CLASS ; 
 size_t EI_DATA ; 
 size_t EI_OSABI ; 
 int /*<<< orphan*/  ELFOSABI_NONE ; 
 int /*<<< orphan*/  ELF_C_WRITE ; 
 int /*<<< orphan*/  ELF_T_EHDR ; 
 int /*<<< orphan*/  ET_REL ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  RELOCATABLE ; 
 int _DATA_BUFSZ ; 
 int _LINE_BUFSZ ; 
 int /*<<< orphan*/  FUNC0 (struct section*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct section*) ; 
 int /*<<< orphan*/  FUNC12 (struct elfcopy*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC17 (char*,char*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC18 (struct elfcopy*) ; 
 struct section* FUNC19 (struct elfcopy*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct elfcopy*,TYPE_2__*,int) ; 
 struct section* FUNC21 (struct elfcopy*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct elfcopy*) ; 
 int /*<<< orphan*/  FUNC23 (struct elfcopy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 

void
FUNC26(struct elfcopy *ecp, int ifd)
{
	char line[_LINE_BUFSZ];
	uint8_t data[_DATA_BUFSZ];
	GElf_Ehdr oeh;
	struct section *s, *shtab;
	FILE *ifp;
	uint64_t addr, addr_base, entry, num, off, rec_addr, sec_addr;
	size_t sz;
	int _ifd, first, sec_index;
	char type;

	if ((_ifd = FUNC1(ifd)) < 0)
		FUNC5(EXIT_FAILURE, "dup failed");
	if ((ifp = FUNC8(_ifd, "r")) == NULL)
		FUNC5(EXIT_FAILURE, "fdopen failed");

	/* Create EHDR for output .o file. */
	if (FUNC15(ecp->eout, ecp->oec) == NULL)
		FUNC6(EXIT_FAILURE, "gelf_newehdr failed: %s",
		    FUNC2(-1));
	if (FUNC14(ecp->eout, &oeh) == NULL)
		FUNC6(EXIT_FAILURE, "gelf_getehdr() failed: %s",
		    FUNC2(-1));

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
	FUNC18(ecp);
	ecp->shstrtab->off = 0;

	/* Data sections are inserted after EHDR. */
	off = FUNC13(ecp->eout, ELF_T_EHDR, 1, EV_CURRENT);
	if (off == 0)
		FUNC6(EXIT_FAILURE, "gelf_fsize() failed: %s", FUNC2(-1));

	/* Create data sections. */
	s = NULL;
	first = 1;
	sec_index = 1;
	addr_base = rec_addr = sec_addr = entry = 0;
	while (FUNC10(line, _LINE_BUFSZ, ifp) != NULL) {
		if (line[0] == '\r' || line[0] == '\n')
			continue;
		if (line[0] != ':') {
			FUNC25("Invalid ihex record");
			continue;
		}
		if (FUNC17(line, &type, &addr, &num, data, &sz) < 0) {
			FUNC25("Invalid ihex record or mismatched checksum");
			continue;
		}
		switch (type) {
		case '0':
			/* Data record. */
			if (sz == 0)
				break;
			rec_addr = addr_base + addr;
			if (first || sec_addr != rec_addr) {
				if (s != NULL)
					FUNC11(s);
				s = FUNC21(ecp, sec_index, off,
				    rec_addr);
				if (s == NULL) {
					FUNC25("new_data_section failed");
					break;
				}
				sec_index++;
				sec_addr = rec_addr;
				first = 0;
			}
			FUNC0(s, data, sz);
			off += sz;
			sec_addr += sz;
			break;
		case '1':
			/* End of file record. */
			goto done;
		case '2':
			/* Extended segment address record. */
			addr_base = addr << 4;
			break;
		case '3':
			/* Start segment address record (CS:IP). Ignored. */
			break;
		case '4':
			/* Extended linear address record. */
			addr_base = num << 16;
			break;
		case '5':
			/* Start linear address record. */
			entry = num;
			break;
		default:
			break;
		}
	}
done:
	if (s != NULL)
		FUNC11(s);
	if (FUNC9(ifp))
		FUNC24("fgets failed");
	FUNC7(ifp);

	/* Insert .shstrtab after data sections. */
	if ((ecp->shstrtab->os = FUNC3(ecp->eout)) == NULL)
		FUNC6(EXIT_FAILURE, "elf_newscn failed: %s",
		    FUNC2(-1));
	FUNC20(ecp, ecp->shstrtab, 1);

	/* Insert section header table here. */
	shtab = FUNC19(ecp, 1);

	/* Set entry point. */
	oeh.e_entry = entry;

	/*
	 * Write the underlying ehdr. Note that it should be called
	 * before elf_setshstrndx() since it will overwrite e->e_shstrndx.
	 */
	if (FUNC16(ecp->eout, &oeh) == 0)
		FUNC6(EXIT_FAILURE, "gelf_update_ehdr() failed: %s",
		    FUNC2(-1));

	/* Update sh_name pointer for each section header entry. */
	FUNC23(ecp, 0);

	/* Renew oeh to get the updated e_shstrndx. */
	if (FUNC14(ecp->eout, &oeh) == NULL)
		FUNC6(EXIT_FAILURE, "gelf_getehdr() failed: %s",
		    FUNC2(-1));

	/* Resync section offsets. */
	FUNC22(ecp);

	/* Store SHDR offset in EHDR. */
	oeh.e_shoff = shtab->off;

	/* Update ehdr since we modified e_shoff. */
	if (FUNC16(ecp->eout, &oeh) == 0)
		FUNC6(EXIT_FAILURE, "gelf_update_ehdr() failed: %s",
		    FUNC2(-1));

	/* Write out the output elf object. */
	if (FUNC4(ecp->eout, ELF_C_WRITE) < 0)
		FUNC6(EXIT_FAILURE, "elf_update() failed: %s",
		    FUNC2(-1));

	/* Release allocated resource. */
	FUNC12(ecp);
}