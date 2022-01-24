#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wint_t ;
typedef  int /*<<< orphan*/  mbstate_t ;
struct TYPE_12__ {int /*<<< orphan*/  _mbstate; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 scalar_t__ EILSEQ ; 
 int EOF ; 
 scalar_t__ WEOF ; 
 int /*<<< orphan*/  bflag ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ eflag ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nflag ; 
 int FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int rval ; 
 scalar_t__ sflag ; 
 TYPE_1__* stdin ; 
 TYPE_1__* stdout ; 
 scalar_t__ tflag ; 
 void* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,TYPE_1__*) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(FILE *fp)
{
	int ch, gobble, line, prev;
	wint_t wch;

	/* Reset EOF condition on stdin. */
	if (fp == stdin && FUNC2(stdin))
		FUNC0(stdin);

	line = gobble = 0;
	for (prev = '\n'; (ch = FUNC5(fp)) != EOF; prev = ch) {
		if (prev == '\n') {
			if (sflag) {
				if (ch == '\n') {
					if (gobble)
						continue;
					gobble = 1;
				} else
					gobble = 0;
			}
			if (nflag) {
				if (!bflag || ch != '\n') {
					(void)FUNC4(stdout, "%6d\t", ++line);
					if (FUNC3(stdout))
						break;
				} else if (eflag) {
					(void)FUNC4(stdout, "%6s\t", "");
					if (FUNC3(stdout))
						break;
				}
			}
		}
		if (ch == '\n') {
			if (eflag && FUNC11('$') == EOF)
				break;
		} else if (ch == '\t') {
			if (tflag) {
				if (FUNC11('^') == EOF || FUNC11('I') == EOF)
					break;
				continue;
			}
		} else if (vflag) {
			(void)FUNC14(ch, fp);
			/*
			 * Our getwc(3) doesn't change file position
			 * on error.
			 */
			if ((wch = FUNC6(fp)) == WEOF) {
				if (FUNC3(fp) && errno == EILSEQ) {
					FUNC0(fp);
					/* Resync attempt. */
					FUNC10(&fp->_mbstate, 0, sizeof(mbstate_t));
					if ((ch = FUNC5(fp)) == EOF)
						break;
					wch = ch;
					goto ilseq;
				} else
					break;
			}
			if (!FUNC7(wch) && !FUNC9(wch)) {
ilseq:
				if (FUNC11('M') == EOF || FUNC11('-') == EOF)
					break;
				wch = FUNC13(wch);
			}
			if (FUNC8(wch)) {
				ch = FUNC13(wch);
				ch = (ch == '\177') ? '?' : (ch | 0100);
				if (FUNC11('^') == EOF || FUNC11(ch) == EOF)
					break;
				continue;
			}
			if (FUNC12(wch) == WEOF)
				break;
			ch = -1;
			continue;
		}
		if (FUNC11(ch) == EOF)
			break;
	}
	if (FUNC3(fp)) {
		FUNC15("%s", filename);
		rval = 1;
		FUNC0(fp);
	}
	if (FUNC3(stdout))
		FUNC1(1, "stdout");
}