#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct Func {char* name; int /*<<< orphan*/  call_line; int /*<<< orphan*/  call_file; int /*<<< orphan*/ * inlined_caller; } ;
struct CU {int /*<<< orphan*/ * srcfiles; int /*<<< orphan*/  funclist; int /*<<< orphan*/  nsrcfiles; void* hipc; void* lopc; int /*<<< orphan*/  off; } ;
typedef  int /*<<< orphan*/  off ;
typedef  int /*<<< orphan*/  demangled ;
typedef  int /*<<< orphan*/  Elf ;
typedef  void* Dwarf_Unsigned ;
typedef  int Dwarf_Signed ;
typedef  int /*<<< orphan*/  Dwarf_Off ;
typedef  int /*<<< orphan*/  Dwarf_Line ;
typedef  scalar_t__ Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/ * Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;
typedef  void* Dwarf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_high_pc ; 
 int /*<<< orphan*/  DW_AT_low_pc ; 
 int /*<<< orphan*/  DW_DLA_DIE ; 
 int DW_DLV_ERROR ; 
#define  DW_DLV_NO_ENTRY 129 
#define  DW_DLV_OK 128 
 scalar_t__ DW_TAG_compile_unit ; 
 int ELFCLASS32 ; 
 int ELFCLASS64 ; 
 int ELFCLASSNONE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct CU*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct CU*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ base ; 
 char* FUNC4 (char*) ; 
 struct CU* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct CU*) ; 
 int /*<<< orphan*/  culist ; 
 scalar_t__ demangle ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (char const*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ func ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *,void*,void**) ; 
 int /*<<< orphan*/  hh ; 
 scalar_t__ inlines ; 
 scalar_t__ pretty_print ; 
 scalar_t__ print_addr ; 
 int /*<<< orphan*/  FUNC25 (struct CU*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,char const*,...) ; 
 struct Func* FUNC27 (struct CU*,void*) ; 
 scalar_t__ section_base ; 
 void* FUNC28 (char const*,int /*<<< orphan*/ *,int) ; 
 void* unknown ; 
 int /*<<< orphan*/  FUNC29 (char*,...) ; 

__attribute__((used)) static void
FUNC30(Dwarf_Debug dbg, Elf *e, const char* addrstr)
{
	Dwarf_Die die, ret_die;
	Dwarf_Line *lbuf;
	Dwarf_Error de;
	Dwarf_Half tag;
	Dwarf_Unsigned lopc, hipc, addr, lineno, plineno;
	Dwarf_Signed lcount;
	Dwarf_Addr lineaddr, plineaddr;
	Dwarf_Off off;
	struct CU *cu;
	struct Func *f;
	const char *funcname;
	char *file, *file0, *pfile;
	char demangled[1024];
	int ec, i, ret;

	addr = FUNC28(addrstr, NULL, 16);
	addr += section_base;
	lineno = 0;
	file = unknown;
	cu = NULL;
	die = NULL;

	while ((ret = FUNC14(dbg, NULL, NULL, NULL, NULL, NULL,
	    &de)) ==  DW_DLV_OK) {
		die = NULL;
		while (FUNC15(dbg, die, &ret_die, &de) == DW_DLV_OK) {
			if (die != NULL)
				FUNC8(dbg, die, DW_DLA_DIE);
			die = ret_die;
			if (FUNC18(die, &tag, &de) != DW_DLV_OK) {
				FUNC29("dwarf_tag failed: %s",
				    FUNC10(de));
				goto next_cu;
			}

			/* XXX: What about DW_TAG_partial_unit? */
			if (tag == DW_TAG_compile_unit)
				break;
		}
		if (ret_die == NULL) {
			FUNC29("could not find DW_TAG_compile_unit die");
			goto next_cu;
		}
		if (FUNC7(die, DW_AT_low_pc, &lopc, &de) ==
		    DW_DLV_OK) {
			if (FUNC7(die, DW_AT_high_pc, &hipc,
			   &de) == DW_DLV_OK) {
				/*
				 * Check if the address falls into the PC
				 * range of this CU.
				 */
				if (FUNC24(die, lopc, &hipc) !=
				    DW_DLV_OK)
					goto out;
			} else {
				/* Assume ~0ULL if DW_AT_high_pc not present */
				hipc = ~0ULL;
			}

			/*
			 * Record the CU in the hash table for faster lookup
			 * later.
			 */
			if (FUNC9(die, &off, &de) != DW_DLV_OK) {
				FUNC29("dwarf_dieoffset failed: %s",
				    FUNC10(de));
				goto out;
			}
			FUNC1(hh, culist, &off, sizeof(off), cu);
			if (cu == NULL) {
				if ((cu = FUNC5(1, sizeof(*cu))) == NULL)
					FUNC21(EXIT_FAILURE, "calloc");
				cu->off = off;
				cu->lopc = lopc;
				cu->hipc = hipc;
				FUNC3(&cu->funclist);
				FUNC0(hh, culist, off, sizeof(off), cu);
			}

			if (addr >= lopc && addr < hipc)
				break;
		}

	next_cu:
		if (die != NULL) {
			FUNC8(dbg, die, DW_DLA_DIE);
			die = NULL;
		}
	}

	if (ret != DW_DLV_OK || die == NULL)
		goto out;

	switch (FUNC17(die, &lbuf, &lcount, &de)) {
	case DW_DLV_OK:
		break;
	case DW_DLV_NO_ENTRY:
		/* If a CU lacks debug info, just skip it. */
		goto out;
	default:
		FUNC29("dwarf_srclines: %s", FUNC10(de));
		goto out;
	}

	plineaddr = ~0ULL;
	plineno = 0;
	pfile = unknown;
	for (i = 0; i < lcount; i++) {
		if (FUNC11(lbuf[i], &lineaddr, &de)) {
			FUNC29("dwarf_lineaddr: %s", FUNC10(de));
			goto out;
		}
		if (FUNC12(lbuf[i], &lineno, &de)) {
			FUNC29("dwarf_lineno: %s", FUNC10(de));
			goto out;
		}
		if (FUNC13(lbuf[i], &file0, &de)) {
			FUNC29("dwarf_linesrc: %s", FUNC10(de));
		} else
			file = file0;
		if (addr == lineaddr)
			goto out;
		else if (addr < lineaddr && addr > plineaddr) {
			lineno = plineno;
			file = pfile;
			goto out;
		}
		plineaddr = lineaddr;
		plineno = lineno;
		pfile = file;
	}

out:
	f = NULL;
	funcname = NULL;
	if (ret == DW_DLV_OK && (func || inlines) && cu != NULL) {
		if (cu->srcfiles == NULL)
			if (FUNC16(die, &cu->srcfiles, &cu->nsrcfiles,
			    &de))
				FUNC29("dwarf_srcfiles: %s", FUNC10(de));
		if (FUNC2(&cu->funclist)) {
			FUNC6(dbg, die, NULL, cu);
			die = NULL;
		}
		f = FUNC27(cu, addr);
		if (f != NULL)
			funcname = f->name;
	}

	if (print_addr) {
		if ((ec = FUNC23(e)) == ELFCLASSNONE) {
			FUNC29("gelf_getclass failed: %s", FUNC19(-1));
			ec = ELFCLASS64;
		}
		if (ec == ELFCLASS32) {
			if (pretty_print)
				FUNC26("0x%08jx: ", (uintmax_t) addr);
			else
				FUNC26("0x%08jx\n", (uintmax_t) addr);
		} else {
			if (pretty_print)
				FUNC26("0x%016jx: ", (uintmax_t) addr);
			else
				FUNC26("0x%016jx\n", (uintmax_t) addr);
		}
	}

	if (func) {
		if (funcname == NULL)
			funcname = unknown;
		if (demangle && !FUNC20(funcname, demangled,
		    sizeof(demangled), 0)) {
			if (pretty_print)
				FUNC26("%s at ", demangled);
			else
				FUNC26("%s\n", demangled);
		} else {
			if (pretty_print)
				FUNC26("%s at ", funcname);
			else
				FUNC26("%s\n", funcname);
		}
	}

	(void) FUNC26("%s:%ju\n", base ? FUNC4(file) : file,
	    (uintmax_t) lineno);

	if (ret == DW_DLV_OK && inlines && cu != NULL &&
	    cu->srcfiles != NULL && f != NULL && f->inlined_caller != NULL)
		FUNC25(cu, f->inlined_caller, f->call_file,
		    f->call_line);

	if (die != NULL)
		FUNC8(dbg, die, DW_DLA_DIE);

	/*
	 * Reset internal CU pointer, so we will start from the first CU
	 * next round.
	 */
	while (ret != DW_DLV_NO_ENTRY) {
		if (ret == DW_DLV_ERROR)
			FUNC22(EXIT_FAILURE, "dwarf_next_cu_header: %s",
			    FUNC10(de));
		ret = FUNC14(dbg, NULL, NULL, NULL, NULL, NULL,
		    &de);
	}
}