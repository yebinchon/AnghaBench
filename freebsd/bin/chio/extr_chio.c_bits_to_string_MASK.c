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
typedef  scalar_t__ ces_status_flags ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static const char *
FUNC3(ces_status_flags v, const char *cp)
{
	const char *np;
	char f, sep, *bp;
	static char buf[128];

	bp = buf;
	(void) FUNC0(buf, 0, sizeof(buf));

	for (sep = '<'; (f = *cp++) != 0; cp = np) {
		for (np = cp; *np >= ' ';)
			np++;
		if (((int)v & (1 << (f - 1))) == 0)
			continue;
		(void) FUNC1(bp, sizeof(buf) - (size_t)(bp - &buf[0]),
			"%c%.*s", sep, (int)(long)(np - cp), cp);
		bp += FUNC2(bp);
		sep = ',';
	}
	if (sep != '<')
		*bp = '>';

	return (buf);
}