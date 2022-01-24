#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* sym; scalar_t__ addr; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int KSYM_NAME_LEN ; 
 scalar_t__ _text ; 
 int /*<<< orphan*/ * best_table ; 
 int /*<<< orphan*/ * best_table_len ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*) ; 
 unsigned int* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*) ; 
 TYPE_1__* table ; 
 unsigned int table_cnt ; 
 char FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(void)
{
	unsigned int i, k, off;
	unsigned int best_idx[256];
	unsigned int *markers;
	char buf[KSYM_NAME_LEN];

	FUNC6("#include <asm/types.h>\n");
	FUNC6("#if BITS_PER_LONG == 64\n");
	FUNC6("#define PTR .quad\n");
	FUNC6("#define ALGN .align 8\n");
	FUNC6("#else\n");
	FUNC6("#define PTR .long\n");
	FUNC6("#define ALGN .align 4\n");
	FUNC6("#endif\n");

	FUNC6("\t.section .rodata, \"a\"\n");

	/* Provide proper symbols relocatability by their '_text'
	 * relativeness.  The symbol names cannot be used to construct
	 * normal symbol references as the list of symbols contains
	 * symbols that are declared static and are private to their
	 * .o files.  This prevents .tmp_kallsyms.o or any other
	 * object from referencing them.
	 */
	FUNC5("kallsyms_addresses");
	for (i = 0; i < table_cnt; i++) {
		if (FUNC8(table[i].sym[0]) != 'A') {
			if (_text <= table[i].addr)
				FUNC6("\tPTR\t_text + %#llx\n",
					table[i].addr - _text);
			else
				FUNC6("\tPTR\t_text - %#llx\n",
					_text - table[i].addr);
		} else {
			FUNC6("\tPTR\t%#llx\n", table[i].addr);
		}
	}
	FUNC6("\n");

	FUNC5("kallsyms_num_syms");
	FUNC6("\tPTR\t%d\n", table_cnt);
	FUNC6("\n");

	/* table of offset markers, that give the offset in the compressed stream
	 * every 256 symbols */
	markers = FUNC4(sizeof(unsigned int) * ((table_cnt + 255) / 256));
	if (!markers) {
		FUNC2(stderr, "kallsyms failure: "
			"unable to allocate required memory\n");
		FUNC0(EXIT_FAILURE);
	}

	FUNC5("kallsyms_names");
	off = 0;
	for (i = 0; i < table_cnt; i++) {
		if ((i & 0xFF) == 0)
			markers[i >> 8] = off;

		FUNC6("\t.byte 0x%02x", table[i].len);
		for (k = 0; k < table[i].len; k++)
			FUNC6(", 0x%02x", table[i].sym[k]);
		FUNC6("\n");

		off += table[i].len + 1;
	}
	FUNC6("\n");

	FUNC5("kallsyms_markers");
	for (i = 0; i < ((table_cnt + 255) >> 8); i++)
		FUNC6("\tPTR\t%d\n", markers[i]);
	FUNC6("\n");

	FUNC3(markers);

	FUNC5("kallsyms_token_table");
	off = 0;
	for (i = 0; i < 256; i++) {
		best_idx[i] = off;
		FUNC1(best_table[i], best_table_len[i], buf);
		FUNC6("\t.asciz\t\"%s\"\n", buf);
		off += FUNC7(buf) + 1;
	}
	FUNC6("\n");

	FUNC5("kallsyms_token_index");
	for (i = 0; i < 256; i++)
		FUNC6("\t.short\t%d\n", best_idx[i]);
	FUNC6("\n");
}