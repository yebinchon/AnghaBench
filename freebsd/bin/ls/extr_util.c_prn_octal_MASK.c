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
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  mbs ;

/* Variables and functions */
 int /*<<< orphan*/  MB_LEN_MAX ; 
 scalar_t__ UCHAR_MAX ; 
 scalar_t__ f_octal_escape ; 
 scalar_t__ FUNC0 (int) ; 
 size_t FUNC1 (int*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int) ; 

int
FUNC7(const char *s)
{
	static const char esc[] = "\\\\\"\"\aa\bb\ff\nn\rr\tt\vv";
	const char *p;
	mbstate_t mbs;
	wchar_t wc;
	size_t clen;
	unsigned char ch;
	int goodchar, i, len, prtlen;

	FUNC2(&mbs, 0, sizeof(mbs));
	len = 0;
	while ((clen = FUNC1(&wc, s, MB_LEN_MAX, &mbs)) != 0) {
		goodchar = clen != (size_t)-1 && clen != (size_t)-2;
		if (goodchar && FUNC0(wc) && wc != L'\"' && wc != L'\\') {
			for (i = 0; i < (int)clen; i++)
				FUNC3((unsigned char)s[i]);
			len += FUNC6(wc);
		} else if (goodchar && f_octal_escape &&
#if WCHAR_MIN < 0
                    wc >= 0 &&
#endif
		    wc <= (wchar_t)UCHAR_MAX &&
		    (p = FUNC4(esc, (char)wc)) != NULL) {
			FUNC3('\\');
			FUNC3(p[1]);
			len += 2;
		} else {
			if (goodchar)
				prtlen = clen;
			else if (clen == (size_t)-1)
				prtlen = 1;
			else
				prtlen = FUNC5(s);
			for (i = 0; i < prtlen; i++) {
				ch = (unsigned char)s[i];
				FUNC3('\\');
				FUNC3('0' + (ch >> 6));
				FUNC3('0' + ((ch >> 3) & 7));
				FUNC3('0' + (ch & 7));
				len += 4;
			}
		}
		if (clen == (size_t)-2)
			break;
		if (clen == (size_t)-1) {
			FUNC2(&mbs, 0, sizeof(mbs));
			s++;
		} else
			s += clen;
	}
	return (len);
}