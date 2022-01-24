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
struct worddest {int dummy; } ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int EXP_SPLIT ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  FUNC0 (char,int,char*,struct worddest*) ; 
 size_t PTRDIFF_MAX ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 char* expdest ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 char* FUNC6 () ; 
 size_t FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int,struct worddest*) ; 

__attribute__((used)) static void
FUNC9(int startloc, int flag, int subtype, int quoted,
    struct worddest *dst)
{
	static char *buf = NULL;
	static size_t buflen = 0;
	char *startp;
	size_t len, zpos, zlen;

	startp = FUNC6() + startloc;
	len = expdest - startp;
	if (len >= SIZE_MAX / 2 || len > PTRDIFF_MAX)
		FUNC2();
	INTOFF;
	if (len >= buflen) {
		FUNC3(buf);
		buf = NULL;
	}
	if (buflen < 128)
		buflen = 128;
	while (len >= buflen)
		buflen <<= 1;
	if (buf == NULL)
		buf = FUNC4(buflen);
	INTON;
	FUNC5(buf, startp, len);
	buf[len] = '\0';
	FUNC1(-(ptrdiff_t)len, expdest);
	for (zpos = 0;;) {
		zlen = FUNC7(buf + zpos);
		FUNC8(buf + zpos, flag, subtype, quoted, dst);
		zpos += zlen + 1;
		if (zpos == len + 1)
			break;
		if (flag & EXP_SPLIT && (quoted || (zlen > 0 && zpos < len)))
			FUNC0('\0', flag, expdest, dst);
	}
}