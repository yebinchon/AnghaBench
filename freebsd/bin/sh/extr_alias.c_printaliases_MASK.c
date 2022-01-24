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
struct alias {char* name; struct alias* next; } ;

/* Variables and functions */
 int ATABSIZE ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int aliases ; 
 struct alias** atab ; 
 int /*<<< orphan*/  FUNC0 (struct alias**) ; 
 struct alias** FUNC1 (int) ; 
 int /*<<< orphan*/  comparealiases ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct alias*) ; 
 int /*<<< orphan*/  FUNC4 (struct alias**,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
	int i, j;
	struct alias **sorted, *ap;

	INTOFF;
	sorted = FUNC1(aliases * sizeof(*sorted));
	j = 0;
	for (i = 0; i < ATABSIZE; i++)
		for (ap = atab[i]; ap; ap = ap->next)
			if (*ap->name != '\0')
				sorted[j++] = ap;
	FUNC4(sorted, aliases, sizeof(*sorted), comparealiases);
	for (i = 0; i < aliases; i++) {
		FUNC3(sorted[i]);
		if (FUNC2())
			break;
	}
	FUNC0(sorted);
	INTON;
}