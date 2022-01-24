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
struct TYPE_4__ {int len; struct TYPE_4__* q_forw; } ;
typedef  TYPE_1__ line_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 long ERR ; 
 long addr_last ; 
 TYPE_1__* FUNC0 (long) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  isbinary ; 
 int /*<<< orphan*/  newline_added ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

long
FUNC3(FILE *fp, long n, long m)
{
	line_t *lp = FUNC0(n);
	unsigned long size = 0;
	char *s;
	int len;

	for (; n && n <= m; n++, lp = lp->q_forw) {
		if ((s = FUNC1(lp)) == NULL)
			return ERR;
		len = lp->len;
		if (n != addr_last || !isbinary || !newline_added)
			s[len++] = '\n';
		if (FUNC2(fp, s, len) < 0)
			return ERR;
		size += len;
	}
	return size;
}