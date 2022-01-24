#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  t; } ;
typedef  TYPE_1__ undo_t ;

/* Variables and functions */
 int EOF ; 
 int ERR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  UADD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 long current_addr ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 int FUNC4 () ; 
 char* ibuf ; 
 char const* ibufp ; 
 int /*<<< orphan*/  isglobal ; 
 int modified ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,long,long) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  stdin ; 

int
FUNC7(long n)
{
	int l;
	const char *lp = ibuf;
	const char *eot;
	undo_t *up = NULL;

	for (current_addr = n;;) {
		if (!isglobal) {
			if ((l = FUNC4()) < 0)
				return ERR;
			else if (l == 0 || ibuf[l - 1] != '\n') {
				FUNC2(stdin);
				return  l ? EOF : 0;
			}
			lp = ibuf;
		} else if (*(lp = ibufp) == '\0')
			return 0;
		else {
			while (*ibufp++ != '\n')
				;
			l = ibufp - lp;
		}
		if (l == 2 && lp[0] == '.' && lp[1] == '\n') {
			return 0;
		}
		eot = lp + l;
		FUNC1();
		do {
			if ((lp = FUNC6(lp)) == NULL) {
				FUNC0();
				return ERR;
			} else if (up)
				up->t = FUNC3(current_addr);
			else if ((up = FUNC5(UADD, current_addr,
			    current_addr)) == NULL) {
				FUNC0();
				return ERR;
			}
		} while (lp != eot);
		modified = 1;
		FUNC0();
	}
	/* NOTREACHED */
}