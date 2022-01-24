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
struct sym_entry {char* sym; scalar_t__ len; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  _text ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 char symbol_prefix_char ; 
 unsigned char FUNC10 (char) ; 

__attribute__((used)) static int FUNC11(FILE *in, struct sym_entry *s)
{
	char str[500];
	char *sym, stype;
	int rc;

	rc = FUNC3(in, "%llx %c %499s\n", &s->addr, &stype, str);
	if (rc != 3) {
		if (rc != EOF) {
			/* skip line */
			FUNC1(str, 500, in);
		}
		return -1;
	}

	sym = str;
	/* skip prefix char */
	if (symbol_prefix_char && str[0] == symbol_prefix_char)
		sym++;

	/* Ignore most absolute/undefined (?) symbols. */
	if (FUNC7(sym, "_text") == 0)
		_text = s->addr;
	else if (FUNC6(sym, s->addr) == 0)
		/* nothing to do */;
	else if (FUNC10(stype) == 'A')
	{
		/* Keep these useful absolute symbols */
		if (FUNC7(sym, "__kernel_syscall_via_break") &&
		    FUNC7(sym, "__kernel_syscall_via_epc") &&
		    FUNC7(sym, "__kernel_sigtramp") &&
		    FUNC7(sym, "__gp"))
			return -1;

	}
	else if (FUNC10(stype) == 'U' ||
		 FUNC4(sym))
		return -1;
	/* exclude also MIPS ELF local symbols ($L123 instead of .L123) */
	else if (str[0] == '$')
		return -1;
	/* exclude debugging symbols */
	else if (stype == 'N')
		return -1;

	/* include the type field in the symbol name, so that it gets
	 * compressed together */
	s->len = FUNC9(str) + 1;
	s->sym = FUNC5(s->len + 1);
	if (!s->sym) {
		FUNC2(stderr, "kallsyms failure: "
			"unable to allocate required amount of memory\n");
		FUNC0(EXIT_FAILURE);
	}
	FUNC8((char *)s->sym + 1, str);
	s->sym[0] = stype;

	return 0;
}