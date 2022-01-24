#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int rm_eo; int rm_so; } ;
typedef  TYPE_1__ regmatch_t ;
struct TYPE_11__ {int /*<<< orphan*/  re_nsub; } ;
typedef  TYPE_2__ pattern_t ;
struct TYPE_12__ {int len; } ;
typedef  TYPE_3__ line_t ;

/* Variables and functions */
 int ERR ; 
 int GSG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  REG_NOTBOL ; 
 int SE_MAX ; 
 int FUNC3 (char*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 char* errmsg ; 
 char* FUNC4 (TYPE_3__*) ; 
 scalar_t__ isbinary ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int) ; 
 scalar_t__ rbuf ; 
 int /*<<< orphan*/  rbufsz ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC7(pattern_t *pat, line_t *lp, int gflag, int kth)
{
	int off = 0;
	int changed = 0;
	int matchno = 0;
	int i = 0;
	regmatch_t rm[SE_MAX];
	char *txt;
	char *eot;

	if ((txt = FUNC4(lp)) == NULL)
		return ERR;
	if (isbinary)
		FUNC1(txt, lp->len);
	eot = txt + lp->len;
	if (!FUNC6(pat, txt, SE_MAX, rm, 0)) {
		do {
			if (!kth || kth == ++matchno) {
				changed++;
				i = rm[0].rm_so;
				FUNC2(rbuf, rbufsz, off + i, ERR);
				if (isbinary)
					FUNC0(txt, rm[0].rm_eo);
				FUNC5(rbuf + off, txt, i);
				off += i;
				if ((off = FUNC3(txt, rm, off,
				    pat->re_nsub)) < 0)
					return ERR;
			} else {
				i = rm[0].rm_eo;
				FUNC2(rbuf, rbufsz, off + i, ERR);
				if (isbinary)
					FUNC0(txt, i);
				FUNC5(rbuf + off, txt, i);
				off += i;
			}
			txt += rm[0].rm_eo;
		} while (*txt &&
                        (!changed || ((gflag & GSG) && rm[0].rm_eo)) &&
		        !FUNC6(pat, txt, SE_MAX, rm, REG_NOTBOL));
		i = eot - txt;
		FUNC2(rbuf, rbufsz, off + i + 2, ERR);
		if (i > 0 && !rm[0].rm_eo && (gflag & GSG)) {
			errmsg = "infinite substitution loop";
			return  ERR;
		}
		if (isbinary)
			FUNC0(txt, i);
		FUNC5(rbuf + off, txt, i);
		FUNC5(rbuf + off + i, "\n", 2);
	}
	return changed ? off + i + 1 : 0;
}