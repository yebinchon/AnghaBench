#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  mods ;
struct TYPE_8__ {scalar_t__ oidlen; } ;
typedef  TYPE_1__ SmiNode ;
typedef  int /*<<< orphan*/  SmiModule ;

/* Variables and functions */
 int SMI_FLAG_ERRORS ; 
 int /*<<< orphan*/  SMI_NODEKIND_ANY ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ cut ; 
 scalar_t__ do_typedef ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/ * last_node ; 
 int /*<<< orphan*/ ** FUNC5 (int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__,TYPE_1__**) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  stderr ; 
 long FUNC16 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* usgtxt ; 

int
FUNC18(int argc, char *argv[])
{
	int opt;
	int flags;
	SmiModule **mods;
	char *name;
	SmiNode *n, *last;
	u_int level;
	long u;
	char *end;

	FUNC13(NULL);

	while ((opt = FUNC4(argc, argv, "c:Eeh")) != -1)
		switch (opt) {

		  case 'c':
			errno = 0;
			u = FUNC16(optarg, &end, 10);
			if (errno != 0)
				FUNC1(1, "argument to -c");
			if (*end != '\0')
				FUNC1(1, "%s: not a number", optarg);
			if (u < 0 || u > 5)
				FUNC1(1, "%s: out of range", optarg);
			cut = (u_int)u;
			break;

		  case 'E':
			do_typedef = 'E';
			break;

		  case 'e':
			do_typedef = 'e';
			break;

		  case 'h':
			FUNC3(stderr, "%s", usgtxt);
			FUNC2(0);
		}

	argc -= optind;
	argv += optind;

	flags = FUNC10();
	flags |= SMI_FLAG_ERRORS;
	FUNC15(flags);

	mods = FUNC5(sizeof(mods[0]) * argc);
	if (mods == NULL)
		FUNC1(1, NULL);

	for (opt = 0; opt < argc; opt++) {
		if ((name = FUNC14(argv[opt])) == NULL)
			FUNC1(1, "%s: cannot load", argv[opt]);
		mods[opt] = FUNC11(name);
	}
	level = 0;
	last = NULL;
	for (opt = 0; opt < argc; opt++) {
		if (mods[opt] == NULL) /* smiGetModule failed above */
			continue;
		n = FUNC9(mods[opt], SMI_NODEKIND_ANY);
		if (n == NULL)
			continue;
		for (;;) {
			if (do_typedef == 0) {
				level = FUNC6(n, level, &last);
				FUNC7(n, level);
				last = n;
			} else
				FUNC8(n);

			if (last_node == NULL ||
			    (n = FUNC12(last_node, SMI_NODEKIND_ANY))
			    == NULL)
				break;
		}
	}
	if (last != NULL && do_typedef == 0)
		level = FUNC0(last->oidlen - 1, level - 1);
	else if (do_typedef != 0)
		FUNC17();

	return (0);
}