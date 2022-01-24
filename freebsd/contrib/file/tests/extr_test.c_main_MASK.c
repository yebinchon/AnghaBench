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
struct magic_set {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MAGIC_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct magic_set*) ; 
 char* FUNC4 (struct magic_set*) ; 
 char* FUNC5 (struct magic_set*,char*) ; 
 int FUNC6 (struct magic_set*,int /*<<< orphan*/ *) ; 
 struct magic_set* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char const*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char const*,char*) ; 

int
FUNC12(int argc, char **argv)
{
	struct magic_set *ms;
	const char *result;
	char *desired;
	size_t desired_len;
	int i;
	FILE *fp;

	ms = FUNC7(MAGIC_NONE);
	if (ms == NULL) {
		(void)FUNC2(stderr, "ERROR opening MAGIC_NONE: out of memory\n");
		return 10;
	}
	if (FUNC6(ms, NULL) == -1) {
		(void)FUNC2(stderr, "ERROR loading with NULL file: %s\n",
		    FUNC4(ms));
		return 11;
	}

	if (argc > 1) {
		if (argc != 3) {
			(void)FUNC2(stderr, "Usage: test TEST-FILE RESULT\n");
		} else {
			if ((result = FUNC5(ms, argv[1])) == NULL) {
				(void)FUNC2(stderr, "ERROR loading file %s: %s\n", argv[1], FUNC4(ms));
				return 12;
			} else {
				fp = FUNC1(argv[2], "r");
				if (fp == NULL) {
					(void)FUNC2(stderr, "ERROR opening `%s': ", argv[2]);
					FUNC8(NULL);
					return 13;
				}
				desired = FUNC10(fp, &desired_len);
				FUNC0(fp);
				(void)FUNC9("%s: %s\n", argv[1], result);
                                if (FUNC11(result, desired) != 0) {
					(void)FUNC2(stderr, "Error: result was\n%s\nexpected:\n%s\n", result, desired);
					return 1;
                                }
			}
		}
	}

	FUNC3(ms);
	return 0;
}