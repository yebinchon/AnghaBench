#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pattern_t ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ line_t ;

/* Variables and functions */
 long FUNC0 (long,int /*<<< orphan*/ ) ; 
 long ERR ; 
 long FUNC1 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  addr_last ; 
 long current_addr ; 
 char* errmsg ; 
 TYPE_1__* FUNC3 (long) ; 
 char* FUNC4 (TYPE_1__*) ; 
 scalar_t__ isbinary ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

long
FUNC6(pattern_t *pat, int dir)
{
	char *s;
	long n = current_addr;
	line_t *lp;

	if (!pat) return ERR;
	do {
	       if ((n = dir ? FUNC1(n, addr_last) : FUNC0(n, addr_last))) {
			lp = FUNC3(n);
			if ((s = FUNC4(lp)) == NULL)
				return ERR;
			if (isbinary)
				FUNC2(s, lp->len);
			if (!FUNC5(pat, s, 0, NULL, 0))
				return n;
	       }
	} while (n != current_addr);
	errmsg = "no match";
	return  ERR;
}