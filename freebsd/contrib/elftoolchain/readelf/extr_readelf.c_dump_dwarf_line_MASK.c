#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char* uintmax_t ;
typedef  char uint8_t ;
typedef  int uint64_t ;
struct section {int /*<<< orphan*/  scn; int /*<<< orphan*/ * name; } ;
struct readelf {size_t shnum; int (* dw_read ) (TYPE_1__*,int*,int) ;int (* dw_decode ) (char**,scalar_t__) ;int /*<<< orphan*/  dbg; struct section* sl; } ;
typedef  char* intmax_t ;
typedef  int int8_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_13__ {scalar_t__ d_size; scalar_t__ d_buf; } ;
typedef  TYPE_1__ Elf_Data ;
typedef  int Dwarf_Unsigned ;
typedef  int Dwarf_Small ;
typedef  scalar_t__ Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/ * Dwarf_Die ;

/* Variables and functions */
 int FUNC0 (char) ; 
 int /*<<< orphan*/  DW_AT_stmt_list ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_OK ; 
#define  DW_LNE_define_file 142 
#define  DW_LNE_end_sequence 141 
#define  DW_LNE_set_address 140 
#define  DW_LNS_advance_line 139 
#define  DW_LNS_advance_pc 138 
#define  DW_LNS_const_add_pc 137 
#define  DW_LNS_copy 136 
#define  DW_LNS_fixed_advance_pc 135 
#define  DW_LNS_negate_stmt 134 
#define  DW_LNS_set_basic_block 133 
#define  DW_LNS_set_column 132 
#define  DW_LNS_set_epilogue_begin 131 
#define  DW_LNS_set_file 130 
#define  DW_LNS_set_isa 129 
#define  DW_LNS_set_prologue_end 128 
 scalar_t__ DW_TAG_compile_unit ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  RESET_REGISTERS ; 
 scalar_t__ FUNC2 (char**,char*) ; 
 int FUNC3 (char**,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 () ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC15 (char*) ; 
 int FUNC16 (TYPE_1__*,int*,int) ; 
 int FUNC17 (TYPE_1__*,int*,int) ; 
 int FUNC18 (char**,scalar_t__) ; 
 int FUNC19 (char**,int) ; 
 int FUNC20 (TYPE_1__*,int*,int) ; 
 scalar_t__ FUNC21 (TYPE_1__*,int*,int) ; 
 int FUNC22 (TYPE_1__*,int*,int) ; 
 int FUNC23 (TYPE_1__*,int*,int) ; 
 int FUNC24 (TYPE_1__*,int*,int) ; 
 int FUNC25 (TYPE_1__*,int*,int) ; 
 int FUNC26 (TYPE_1__*,int*,int) ; 
 int FUNC27 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 

__attribute__((used)) static void
FUNC29(struct readelf *re)
{
	struct section *s;
	Dwarf_Die die;
	Dwarf_Error de;
	Dwarf_Half tag, version, pointer_size;
	Dwarf_Unsigned offset, endoff, length, hdrlen, dirndx, mtime, fsize;
	Dwarf_Small minlen, defstmt, lrange, opbase, oplen;
	Elf_Data *d;
	char *pn;
	uint64_t address, file, line, column, isa, opsize, udelta;
	int64_t sdelta;
	uint8_t *p, *pe;
	int8_t lbase;
	int i, is_stmt, dwarf_size, elferr, ret;

	FUNC13("\nDump of debug contents of section .debug_line:\n");

	s = NULL;
	for (i = 0; (size_t) i < re->shnum; i++) {
		s = &re->sl[i];
		if (s->name != NULL && !FUNC14(s->name, ".debug_line"))
			break;
	}
	if ((size_t) i >= re->shnum)
		return;

	(void) FUNC11();
	if ((d = FUNC12(s->scn, NULL)) == NULL) {
		elferr = FUNC11();
		if (elferr != 0)
			FUNC28("elf_getdata failed: %s", FUNC10(-1));
		return;
	}
	if (d->d_size <= 0)
		return;

	while ((ret = FUNC7(re->dbg, NULL, NULL, NULL, NULL,
	    NULL, &de)) ==  DW_DLV_OK) {
		die = NULL;
		while (FUNC8(re->dbg, die, &die, &de) == DW_DLV_OK) {
			if (FUNC9(die, &tag, &de) != DW_DLV_OK) {
				FUNC28("dwarf_tag failed: %s",
				    FUNC5(de));
				return;
			}
			/* XXX: What about DW_TAG_partial_unit? */
			if (tag == DW_TAG_compile_unit)
				break;
		}
		if (die == NULL) {
			FUNC28("could not find DW_TAG_compile_unit die");
			return;
		}
		if (FUNC4(die, DW_AT_stmt_list, &offset,
		    &de) != DW_DLV_OK)
			continue;

		length = re->dw_read(d, &offset, 4);
		if (length == 0xffffffff) {
			dwarf_size = 8;
			length = re->dw_read(d, &offset, 8);
		} else
			dwarf_size = 4;

		if (length > d->d_size - offset) {
			FUNC28("invalid .dwarf_line section");
			continue;
		}

		endoff = offset + length;
		pe = (uint8_t *) d->d_buf + endoff;
		version = re->dw_read(d, &offset, 2);
		hdrlen = re->dw_read(d, &offset, dwarf_size);
		minlen = re->dw_read(d, &offset, 1);
		defstmt = re->dw_read(d, &offset, 1);
		lbase = re->dw_read(d, &offset, 1);
		lrange = re->dw_read(d, &offset, 1);
		opbase = re->dw_read(d, &offset, 1);

		FUNC13("\n");
		FUNC13("  Length:\t\t\t%ju\n", (uintmax_t) length);
		FUNC13("  DWARF version:\t\t%u\n", version);
		FUNC13("  Prologue Length:\t\t%ju\n", (uintmax_t) hdrlen);
		FUNC13("  Minimum Instruction Length:\t%u\n", minlen);
		FUNC13("  Initial value of 'is_stmt':\t%u\n", defstmt);
		FUNC13("  Line Base:\t\t\t%d\n", lbase);
		FUNC13("  Line Range:\t\t\t%u\n", lrange);
		FUNC13("  Opcode Base:\t\t\t%u\n", opbase);
		(void) FUNC6(re->dbg, &pointer_size, &de);
		FUNC13("  (Pointer size:\t\t%u)\n", pointer_size);

		FUNC13("\n");
		FUNC13(" Opcodes:\n");
		for (i = 1; i < opbase; i++) {
			oplen = re->dw_read(d, &offset, 1);
			FUNC13("  Opcode %d has %u args\n", i, oplen);
		}

		FUNC13("\n");
		FUNC13(" The Directory Table:\n");
		p = (uint8_t *) d->d_buf + offset;
		while (*p != '\0') {
			FUNC13("  %s\n", (char *) p);
			p += FUNC15((char *) p) + 1;
		}

		p++;
		FUNC13("\n");
		FUNC13(" The File Name Table:\n");
		FUNC13("  Entry\tDir\tTime\tSize\tName\n");
		i = 0;
		while (*p != '\0') {
			i++;
			pn = (char *) p;
			p += FUNC15(pn) + 1;
			dirndx = FUNC3(&p, pe);
			mtime = FUNC3(&p, pe);
			fsize = FUNC3(&p, pe);
			FUNC13("  %d\t%ju\t%ju\t%ju\t%s\n", i,
			    (uintmax_t) dirndx, (uintmax_t) mtime,
			    (uintmax_t) fsize, pn);
		}

#define	RESET_REGISTERS						\
	do {							\
		address	       = 0;				\
		file	       = 1;				\
		line	       = 1;				\
		column	       = 0;				\
		is_stmt	       = defstmt;			\
	} while(0)

#define	LINE(x) (lbase + (((x) - opbase) % lrange))
#define	ADDRESS(x) ((((x) - opbase) / lrange) * minlen)

		p++;
		FUNC13("\n");
		FUNC13(" Line Number Statements:\n");

		RESET_REGISTERS;

		while (p < pe) {

			if (*p == 0) {
				/*
				 * Extended Opcodes.
				 */
				p++;
				opsize = FUNC3(&p, pe);
				FUNC13("  Extended opcode %u: ", *p);
				switch (*p) {
				case DW_LNE_end_sequence:
					p++;
					RESET_REGISTERS;
					FUNC13("End of Sequence\n");
					break;
				case DW_LNE_set_address:
					p++;
					address = re->dw_decode(&p,
					    pointer_size);
					FUNC13("set Address to %#jx\n",
					    (uintmax_t) address);
					break;
				case DW_LNE_define_file:
					p++;
					pn = (char *) p;
					p += FUNC15(pn) + 1;
					dirndx = FUNC3(&p, pe);
					mtime = FUNC3(&p, pe);
					fsize = FUNC3(&p, pe);
					FUNC13("define new file: %s\n", pn);
					break;
				default:
					/* Unrecognized extened opcodes. */
					p += opsize;
					FUNC13("unknown opcode\n");
				}
			} else if (*p > 0 && *p < opbase) {
				/*
				 * Standard Opcodes.
				 */
				switch(*p++) {
				case DW_LNS_copy:
					FUNC13("  Copy\n");
					break;
				case DW_LNS_advance_pc:
					udelta = FUNC3(&p, pe) *
					    minlen;
					address += udelta;
					FUNC13("  Advance PC by %ju to %#jx\n",
					    (uintmax_t) udelta,
					    (uintmax_t) address);
					break;
				case DW_LNS_advance_line:
					sdelta = FUNC2(&p, pe);
					line += sdelta;
					FUNC13("  Advance Line by %jd to %ju\n",
					    (intmax_t) sdelta,
					    (uintmax_t) line);
					break;
				case DW_LNS_set_file:
					file = FUNC3(&p, pe);
					FUNC13("  Set File to %ju\n",
					    (uintmax_t) file);
					break;
				case DW_LNS_set_column:
					column = FUNC3(&p, pe);
					FUNC13("  Set Column to %ju\n",
					    (uintmax_t) column);
					break;
				case DW_LNS_negate_stmt:
					is_stmt = !is_stmt;
					FUNC13("  Set is_stmt to %d\n", is_stmt);
					break;
				case DW_LNS_set_basic_block:
					FUNC13("  Set basic block flag\n");
					break;
				case DW_LNS_const_add_pc:
					address += ADDRESS(255);
					FUNC13("  Advance PC by constant %ju"
					    " to %#jx\n",
					    (uintmax_t) ADDRESS(255),
					    (uintmax_t) address);
					break;
				case DW_LNS_fixed_advance_pc:
					udelta = re->dw_decode(&p, 2);
					address += udelta;
					FUNC13("  Advance PC by fixed value "
					    "%ju to %#jx\n",
					    (uintmax_t) udelta,
					    (uintmax_t) address);
					break;
				case DW_LNS_set_prologue_end:
					FUNC13("  Set prologue end flag\n");
					break;
				case DW_LNS_set_epilogue_begin:
					FUNC13("  Set epilogue begin flag\n");
					break;
				case DW_LNS_set_isa:
					isa = FUNC3(&p, pe);
					FUNC13("  Set isa to %ju\n",
					    (uintmax_t) isa);
					break;
				default:
					/* Unrecognized extended opcodes. */
					FUNC13("  Unknown extended opcode %u\n",
					    *(p - 1));
					break;
				}

			} else {
				/*
				 * Special Opcodes.
				 */
				line += LINE(*p);
				address += ADDRESS(*p);
				FUNC13("  Special opcode %u: advance Address "
				    "by %ju to %#jx and Line by %jd to %ju\n",
				    *p - opbase, (uintmax_t) ADDRESS(*p),
				    (uintmax_t) address, (intmax_t) LINE(*p),
				    (uintmax_t) line);
				p++;
			}


		}
	}
	if (ret == DW_DLV_ERROR)
		FUNC28("dwarf_next_cu_header: %s", FUNC5(de));

#undef	RESET_REGISTERS
#undef	LINE
#undef	ADDRESS
}