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

/* Variables and functions */
 char* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* errmsg ; 
 char* ibufp ; 
 scalar_t__ isbinary ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*) ; 

char *
FUNC4(int delimiter)
{
	static char *lhbuf = NULL;	/* buffer */
	static int lhbufsz = 0;		/* buffer size */

	char *nd;
	int len;

	for (nd = ibufp; *nd != delimiter && *nd != '\n'; nd++)
		switch (*nd) {
		default:
			break;
		case '[':
			if ((nd = FUNC3(nd + 1)) == NULL) {
				errmsg = "unbalanced brackets ([])";
				return NULL;
			}
			break;
		case '\\':
			if (*++nd == '\n') {
				errmsg = "trailing backslash (\\)";
				return NULL;
			}
			break;
		}
	len = nd - ibufp;
	FUNC1(lhbuf, lhbufsz, len + 1, NULL);
	FUNC2(lhbuf, ibufp, len);
	lhbuf[len] = '\0';
	ibufp = nd;
	return (isbinary) ? FUNC0(lhbuf, len) : lhbuf;
}