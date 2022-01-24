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
typedef  union node {int dummy; } node ;
struct worddest {int dummy; } ;
struct backcmd {char* buf; scalar_t__ nleft; scalar_t__ fd; scalar_t__ jp; } ;

/* Variables and functions */
 char* BASESYNTAX ; 
 char const CCTL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char CTLESC ; 
 char* DQSYNTAX ; 
 scalar_t__ EINTR ; 
 int EXP_CASE ; 
 int EXP_GLOB ; 
 int EXP_SPLIT ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  FUNC1 (char,int,char*,struct worddest*) ; 
 char FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (union node*,struct backcmd*) ; 
 int /*<<< orphan*/  exitstatus ; 
 char* expdest ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 () ; 
 char* FUNC11 () ; 
 int FUNC12 (scalar_t__,char*,int) ; 
 char* FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 (char const*,char) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int*) ; 

__attribute__((used)) static void
FUNC17(union node *cmd, int quoted, int flag, struct worddest *dst)
{
	struct backcmd in;
	int i;
	char buf[128];
	char *p;
	char *dest = expdest;
	char lastc;
	char const *syntax = quoted? DQSYNTAX : BASESYNTAX;
	int quotes = flag & (EXP_GLOB | EXP_CASE);
	size_t nnl;
	const char *ifs;
	int startloc;

	INTOFF;
	p = FUNC9(dest);
	FUNC8(cmd, &in);
	FUNC15(p, dest);

	p = in.buf;
	startloc = dest - FUNC13();
	nnl = 0;
	if (!quoted && flag & EXP_SPLIT)
		ifs = FUNC10() ? FUNC11() : " \t\n";
	else
		ifs = "";
	/* Remove trailing newlines */
	for (;;) {
		if (--in.nleft < 0) {
			if (in.fd < 0)
				break;
			while ((i = FUNC12(in.fd, buf, sizeof buf)) < 0 && errno == EINTR)
				;
			FUNC4(("expbackq: read returns %d\n", i));
			if (i <= 0)
				break;
			p = buf;
			in.nleft = i - 1;
		}
		lastc = *p++;
		if (lastc == '\0')
			continue;
		if (nnl > 0 && lastc != '\n') {
			FUNC1('\n', flag, dest, dst);
			nnl = 0;
		}
		if (FUNC14(ifs, lastc) != NULL) {
			if (lastc == '\n')
				nnl++;
			else
				FUNC1(lastc, flag, dest, dst);
		} else {
			FUNC0(2, dest);
			if (quotes && syntax[(int)lastc] == CCTL)
				FUNC5(CTLESC, dest);
			FUNC5(lastc, dest);
		}
	}
	while (dest > FUNC13() + startloc && FUNC2(dest) == '\n')
		FUNC3(dest);

	if (in.fd >= 0)
		FUNC7(in.fd);
	if (in.buf)
		FUNC6(in.buf);
	if (in.jp) {
		p = FUNC9(dest);
		exitstatus = FUNC16(in.jp, (int *)NULL);
		FUNC15(p, dest);
	}
	FUNC4(("expbackq: done\n"));
	expdest = dest;
	INTON;
}