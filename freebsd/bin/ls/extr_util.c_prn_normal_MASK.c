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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  mbs ;

/* Variables and functions */
 int /*<<< orphan*/  MB_LEN_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(const char *s)
{
	mbstate_t mbs;
	wchar_t wc;
	int i, n;
	size_t clen;

	FUNC2(&mbs, 0, sizeof(mbs));
	n = 0;
	while ((clen = FUNC1(&wc, s, MB_LEN_MAX, &mbs)) != 0) {
		if (clen == (size_t)-2) {
			n += FUNC3("%s", s);
			break;
		}
		if (clen == (size_t)-1) {
			FUNC2(&mbs, 0, sizeof(mbs));
			FUNC4((unsigned char)*s);
			s++;
			n++;
			continue;
		}
		for (i = 0; i < (int)clen; i++)
			FUNC4((unsigned char)s[i]);
		s += clen;
		if (FUNC0(wc))
			n += FUNC5(wc);
	}
	return (n);
}