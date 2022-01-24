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
struct magic_set {int /*<<< orphan*/ ** mlist; } ;

/* Variables and functions */
#define  FILE_CHECK 131 
#define  FILE_COMPILE 130 
#define  FILE_LIST 129 
#define  FILE_LOAD 128 
 size_t MAGIC_SETS ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  PATHSEP ; 
 int FUNC1 (struct magic_set*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct magic_set*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct magic_set*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct magic_set*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char const*) ; 
 int FUNC12 (char const*) ; 

int
FUNC13(struct magic_set *ms, const char *fn, int action)
{
	char *p, *mfn;
	int fileerr, errs = -1;
	size_t i;

	(void)FUNC4(ms, 0);

	if ((fn = FUNC7(fn, action)) == NULL)
		return -1;

	FUNC6();

	if ((mfn = FUNC11(fn)) == NULL) {
		FUNC3(ms, FUNC12(fn));
		return -1;
	}

	for (i = 0; i < MAGIC_SETS; i++) {
		FUNC9(ms->mlist[i]);
		if ((ms->mlist[i] = FUNC8()) == NULL) {
			FUNC3(ms, sizeof(*ms->mlist[i]));
			while (i-- > 0) {
				FUNC9(ms->mlist[i]);
				ms->mlist[i] = NULL;
			}
			FUNC5(mfn);
			return -1;
		}
	}
	fn = mfn;

	while (fn) {
		p = FUNC10(fn, PATHSEP);
		if (p)
			*p++ = '\0';
		if (*fn == '\0')
			break;
		fileerr = FUNC1(ms, fn, action);
		errs = FUNC0(errs, fileerr);
		fn = p;
	}

	FUNC5(mfn);

	if (errs == -1) {
		for (i = 0; i < MAGIC_SETS; i++) {
			FUNC9(ms->mlist[i]);
			ms->mlist[i] = NULL;
		}
		FUNC2(ms, 0, "could not find any valid magic files!");
		return -1;
	}

#if 0
	/*
	 * Always leave the database loaded
	 */
	if (action == FILE_LOAD)
		return 0;

	for (i = 0; i < MAGIC_SETS; i++) {
		mlist_free(ms->mlist[i]);
		ms->mlist[i] = NULL;
	}
#endif

	switch (action) {
	case FILE_LOAD:
	case FILE_COMPILE:
	case FILE_CHECK:
	case FILE_LIST:
		return 0;
	default:
		FUNC2(ms, 0, "Invalid action %d", action);
		return -1;
	}
}