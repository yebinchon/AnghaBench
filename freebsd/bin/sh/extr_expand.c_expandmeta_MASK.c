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
struct arglist {int count; int /*<<< orphan*/ * args; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  FUNC0 (struct arglist*,char*) ; 
 int /*<<< orphan*/  expdir ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct arglist*) ; 
 int /*<<< orphan*/  expsortcmp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(char *pattern, struct arglist *dstlist)
{
	char *p;
	int firstmatch;
	char c;

	firstmatch = dstlist->count;
	p = pattern;
	for (; (c = *p) != '\0'; p++) {
		/* fast check for meta chars */
		if (c == '*' || c == '?' || c == '[') {
			INTOFF;
			FUNC1(expdir, pattern, dstlist);
			INTON;
			break;
		}
	}
	if (dstlist->count == firstmatch) {
		/*
		 * no matches
		 */
		FUNC3(pattern);
		FUNC0(dstlist, pattern);
	} else {
		FUNC2(&dstlist->args[firstmatch],
		    dstlist->count - firstmatch,
		    sizeof(dstlist->args[0]), expsortcmp);
	}
}