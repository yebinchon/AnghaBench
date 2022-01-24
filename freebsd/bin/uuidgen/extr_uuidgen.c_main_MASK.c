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
typedef  char uuid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int,char**,char*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/ * stdout ; 
 int FUNC11 (int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int uuid_s_ok ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char**,int*) ; 
 scalar_t__ FUNC14 (char*,int) ; 

int
FUNC15(int argc, char *argv[])
{
	FILE *fp;
	uuid_t *store, *uuid;
	char *p;
	int ch, count, i, iterate, status;

	count = -1;	/* no count yet */
	fp = stdout;	/* default output file */
	iterate = 0;	/* not one at a time */
	while ((ch = FUNC9(argc, argv, "1n:o:")) != -1)
		switch (ch) {
		case '1':
			iterate = 1;
			break;
		case 'n':
			if (count > 0)
				FUNC12();
			count = FUNC11(optarg, &p, 10);
			if (*p != 0 || count < 1)
				FUNC12();
			break;
		case 'o':
			if (fp != stdout)
				FUNC4(1, "multiple output files not allowed");
			fp = FUNC6(optarg, "w");
			if (fp == NULL)
				FUNC3(1, "fopen");
			break;
		default:
			FUNC12();
		}
	argv += optind;
	argc -= optind;

	if (argc)
		FUNC12();

	FUNC0();
	if (FUNC2() < 0)
		FUNC3(1, "Unable to limit stdio");
	if (FUNC1() < 0)
		FUNC3(1, "Unable to enter capability mode");

	if (count == -1)
		count = 1;

	store = (uuid_t*)FUNC10(sizeof(uuid_t) * count);
	if (store == NULL)
		FUNC3(1, "malloc()");

	if (!iterate) {
		/* Get them all in a single batch */
		if (FUNC14(store, count) != 0)
			FUNC3(1, "uuidgen()");
	} else {
		uuid = store;
		for (i = 0; i < count; i++) {
			if (FUNC14(uuid++, 1) != 0)
				FUNC3(1, "uuidgen()");
		}
	}

	uuid = store;
	while (count--) {
		FUNC13(uuid++, &p, &status);
		if (status != uuid_s_ok)
		     FUNC3(1, "cannot stringify a UUID");
		FUNC7(fp, "%s\n", p);
		FUNC8(p);
	}

	FUNC8(store);
	if (fp != stdout)
		FUNC5(fp);
	return (0);
}