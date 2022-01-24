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
typedef  int wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  MB_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int FUNC1 (int*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  multibyte ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

int
FUNC3(const char *s, const char *p)
{
	const char	*olds;
	wchar_t		scc, c;
	int 		n;
	wchar_t		cl;

	olds = s;
	n = FUNC1(&cl, s, MB_LEN_MAX);
	if (n <= 0) {
		s++;
		scc = n;
	} else {
		scc = cl;
		s += n;
	}
	n = FUNC1(&cl, p, MB_LEN_MAX);
	if (n < 0)
		return (0);
	if (n == 0)
		return (scc == 0);
	p += n;
	c = cl;

	switch (c) {
	case '[':
		if (scc <= 0)
			return (0);
	{
			int ok;
			wchar_t lc = 0;
			int notflag = 0;

			ok = 0;
			if (*p == '!') {
				notflag = 1;
				p++;
			}
			FUNC0(p, c);
			do
			{
				if (c == '-' && lc && *p != ']') {
					FUNC0(p, c);
					if (c == '\\') {
						FUNC0(p, c);
					}
					if (notflag) {
						if (!multibyte ||
						    FUNC2(lc, c)) {
							if (scc < lc || scc > c)
								ok++;
							else
								return (0);
						}
					} else {
						if (!multibyte ||
						    FUNC2(lc, c))
							if (lc <= scc &&
							    scc <= c)
								ok++;
					}
				} else if (c == '\\') {
					/* skip to quoted character */
					FUNC0(p, c);
				}
				lc = c;
				if (notflag) {
					if (scc != lc)
						ok++;
					else
						return (0);
				}
				else
				{
					if (scc == lc)
						ok++;
				}
				FUNC0(p, c);
			} while (c != ']');
			return (ok ? FUNC3(s, p) : 0);
		}

	case '\\':
		/* skip to quoted character and see if it matches */
		FUNC0(p, c);

	default:
		if (c != scc)
			return (0);
			/*FALLTHRU*/

	case '?':
		return (scc > 0 ? FUNC3(s, p) : 0);

	case '*':
		while (*p == '*')
			p++;

		if (*p == 0)
			return (1);
		s = olds;
		while (*s) {
			if (FUNC3(s, p))
				return (1);
			n = FUNC1(&cl, s, MB_LEN_MAX);
			if (n < 0)
				/* skip past illegal byte sequence */
				s++;
			else
				s += n;
		}
		return (0);
	}
}