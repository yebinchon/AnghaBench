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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(const char *s)
{
	mbstate_t mbs;
	wchar_t wc;
	int i, n;
	size_t clen;

	FUNC2(&mbs, 0, sizeof(mbs));
	n = 0;
	while ((clen = FUNC1(&wc, s, MB_LEN_MAX, &mbs)) != 0) {
		if (clen == (size_t)-1) {
			FUNC3('?');
			s++;
			n++;
			FUNC2(&mbs, 0, sizeof(mbs));
			continue;
		}
		if (clen == (size_t)-2) {
			FUNC3('?');
			n++;
			break;
		}
		if (!FUNC0(wc)) {
			FUNC3('?');
			s += clen;
			n++;
			continue;
		}
		for (i = 0; i < (int)clen; i++)
			FUNC3((unsigned char)s[i]);
		s += clen;
		n += FUNC4(wc);
	}
	return (n);
}