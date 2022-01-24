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
 int LONG_MAX ; 
 int SIZE_MAX ; 
 int VIS_CSTYLE ; 
 int VIS_NL ; 
 int /*<<< orphan*/  _SC_ARG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (size_t) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t,int) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC5(char **argv)
{
	long arg_max;
	static size_t buf_size;
	size_t len;
	char **p, *dst, *src;
	static char *buf = NULL;

	if (buf == NULL) {
		if ((arg_max = FUNC4(_SC_ARG_MAX)) == -1)
			FUNC0(1, "sysconf _SC_ARG_MAX failed");
		if (arg_max >= LONG_MAX / 4 || arg_max >= (long)(SIZE_MAX / 4))
			FUNC0(1, "sysconf _SC_ARG_MAX preposterously large");
		buf_size = 4 * arg_max + 1;
		if ((buf = FUNC1(buf_size)) == NULL)
			FUNC0(1, "malloc failed");
	}

	if (*argv == NULL) {
		buf[0] = '\0';
		return (buf);
	}
	dst = buf;
	for (p = argv; (src = *p++) != NULL; ) {
		if (*src == '\0')
			continue;
		len = (buf_size - 1 - (dst - buf)) / 4;
		FUNC3(dst, src, FUNC2(src) < len ? FUNC2(src) : len,
		    VIS_NL | VIS_CSTYLE);
		while (*dst != '\0')
			dst++;
		if ((buf_size - 1 - (dst - buf)) / 4 > 0)
			*dst++ = ' ';
	}
	/* Chop off trailing space */
	if (dst != buf && dst[-1] == ' ')
		dst--;
	*dst = '\0';
	return (buf);
}