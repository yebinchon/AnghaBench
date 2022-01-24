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
typedef  int /*<<< orphan*/  HT ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (char*)) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/ * all_chains ; 
 scalar_t__ all_chains_len ; 
 scalar_t__ all_chains_ptr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 () ; 
 long current_linenum ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,long) ; 
 void* keys ; 
 char* FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  stderr ; 
 void* trust_anchors ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(const char *fname)
{
	char *objtype;
	HT *objdata;
	long objlinenum;

	keys = FUNC2();
	trust_anchors = FUNC2();
	all_chains = NULL;
	all_chains_ptr = 0;
	all_chains_len = 0;
	FUNC4(fname);
	objtype = NULL;
	objdata = FUNC2();
	objlinenum = 0;
	for (;;) {
		char *hname;

		if (FUNC5() < 0) {
			break;
		}
		hname = FUNC8();
		if (hname != NULL) {
			if (objtype != NULL) {
				FUNC10(objtype, objdata, objlinenum);
				FUNC0(objdata, xfree);
				FUNC11(objtype);
			}
			objtype = hname;
			objlinenum = current_linenum;
			continue;
		}
		if (objtype == NULL) {
			FUNC7(stderr, "no current section (line %ld)\n",
				current_linenum);
			FUNC6(EXIT_FAILURE);
		}
		if (FUNC9(objdata) < 0) {
			FUNC7(stderr, "wrong configuration, line %ld\n",
				current_linenum);
			FUNC6(EXIT_FAILURE);
		}
	}
	if (objtype != NULL) {
		FUNC10(objtype, objdata, objlinenum);
		FUNC11(objtype);
	}
	FUNC1(objdata, xfree);
	FUNC3();
}