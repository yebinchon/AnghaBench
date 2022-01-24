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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t BUFSIZ ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC0 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char*,size_t) ; 
 char* FUNC4 (char*,char) ; 
 size_t FUNC5 (char*) ; 

char *
FUNC6(FILE *fp, size_t *len)
{
	static char *buf = NULL;
	static size_t bufsiz = 0;
	char *ptr;


	if (buf == NULL) {
		bufsiz = BUFSIZ;
		if ((buf = FUNC2(bufsiz)) == NULL)
			return NULL;
	}

	if (FUNC0(buf, bufsiz, fp) == NULL)
		return NULL;

	*len = 0;
	while ((ptr = FUNC4(&buf[*len], '\n')) == NULL) {
		size_t nbufsiz = bufsiz + BUFSIZ;
		char *nbuf = FUNC3(buf, nbufsiz);

		if (nbuf == NULL) {
			int oerrno = errno;
			FUNC1(buf);
			errno = oerrno;
			buf = NULL;
			return NULL;
		} else
			buf = nbuf;

		if (FUNC0(&buf[bufsiz], BUFSIZ, fp) == NULL) {
			buf[bufsiz] = '\0';
			*len = FUNC5(buf);
			return buf;
		}

		*len = bufsiz;
		bufsiz = nbufsiz;
	}

	*len = (ptr - buf) + 1;
	return buf;
}