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
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* errmsg ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* ibuf ; 
 char* ibufp ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

char *
FUNC4(int *sizep, int nonl)
{
	static char *cvbuf = NULL;		/* buffer */
	static int cvbufsz = 0;			/* buffer size */

	int l, n;
	char *t = ibufp;

	while (*t++ != '\n')
		;
	if ((l = t - ibufp) < 2 || !FUNC2(ibufp, ibufp + l - 1)) {
		*sizep = l;
		return ibufp;
	}
	*sizep = -1;
	FUNC0(cvbuf, cvbufsz, l, NULL);
	FUNC3(cvbuf, ibufp, l);
	*(cvbuf + --l - 1) = '\n'; 	/* strip trailing esc */
	if (nonl) l--; 			/* strip newline */
	for (;;) {
		if ((n = FUNC1()) < 0)
			return NULL;
		else if (n == 0 || ibuf[n - 1] != '\n') {
			errmsg = "unexpected end-of-file";
			return NULL;
		}
		FUNC0(cvbuf, cvbufsz, l + n, NULL);
		FUNC3(cvbuf + l, ibuf, n);
		l += n;
		if (n < 2 || !FUNC2(cvbuf, cvbuf + l - 1))
			break;
		*(cvbuf + --l - 1) = '\n'; 	/* strip trailing esc */
		if (nonl) l--; 			/* strip newline */
	}
	FUNC0(cvbuf, cvbufsz, l + 1, NULL);
	cvbuf[l] = '\0';
	*sizep = l;
	return cvbuf;
}