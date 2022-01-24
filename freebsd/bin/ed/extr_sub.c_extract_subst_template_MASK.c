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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* errmsg ; 
 int FUNC2 () ; 
 char* ibuf ; 
 char* ibufp ; 
 int /*<<< orphan*/  isglobal ; 
 char* rhbuf ; 
 size_t rhbufi ; 
 int /*<<< orphan*/  rhbufsz ; 
 int /*<<< orphan*/  stdin ; 

char *
FUNC3(void)
{
	int n = 0;
	int i = 0;
	char c;
	char delimiter = *ibufp++;

	if (*ibufp == '%' && *(ibufp + 1) == delimiter) {
		ibufp++;
		if (!rhbuf)
			errmsg = "no previous substitution";
		return rhbuf;
	}
	while (*ibufp != delimiter) {
		FUNC0(rhbuf, rhbufsz, i + 2, NULL);
		if ((c = rhbuf[i++] = *ibufp++) == '\n' && *ibufp == '\0') {
			i--, ibufp--;
			break;
		} else if (c != '\\')
			;
		else if ((rhbuf[i++] = *ibufp++) != '\n')
			;
		else if (!isglobal) {
			while ((n = FUNC2()) == 0 ||
			    (n > 0 && ibuf[n - 1] != '\n'))
				FUNC1(stdin);
			if (n < 0)
				return NULL;
		}
	}
	FUNC0(rhbuf, rhbufsz, i + 1, NULL);
	rhbuf[rhbufi = i] = '\0';
	return  rhbuf;
}