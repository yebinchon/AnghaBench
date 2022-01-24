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
typedef  scalar_t__ u_char ;
struct winsize {int ws_row; int ws_col; } ;
struct termios {long c_lflag; long c_iflag; long c_oflag; long c_cflag; scalar_t__* c_cc; } ;
struct cchar {char* name; size_t sub; scalar_t__ def; } ;
typedef  enum FMT { ____Placeholder_FMT } FMT ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;

/* Variables and functions */
 long const ALTWERASE ; 
 long const BRKINT ; 
 int BSD ; 
#define  CCTS_OFLOW 137 
 long const CDSR_OFLOW ; 
 long const CDTR_IFLOW ; 
 long const CLOCAL ; 
 int /*<<< orphan*/  CNO_RTSDTR ; 
 long const CREAD ; 
#define  CRTS_IFLOW 136 
#define  CS5 135 
#define  CS6 134 
#define  CS7 133 
#define  CS8 132 
 long CSIZE ; 
 long const CSTOPB ; 
 long const ECHO ; 
 long const ECHOCTL ; 
 long const ECHOE ; 
 long const ECHOK ; 
 long const ECHOKE ; 
 long const ECHONL ; 
 long const ECHOPRT ; 
 long const EXTPROC ; 
 long const FLUSHO ; 
 long const HUPCL ; 
 long const ICANON ; 
 long const ICRNL ; 
 long const IEXTEN ; 
 long const IGNBRK ; 
 long const IGNCR ; 
 long const IGNPAR ; 
 long const IMAXBEL ; 
 long const INLCR ; 
 long const INPCK ; 
 long const ISIG ; 
 long const ISTRIP ; 
 long const IXANY ; 
 long const IXOFF ; 
 long const IXON ; 
 int LINELENGTH ; 
 long const MDMBUF ; 
 long const NOFLSH ; 
 long const NOKERNINFO ; 
 long const OCRNL ; 
 long const ONLCR ; 
 long const ONLRET ; 
 long const ONOCR ; 
 long const OPOST ; 
 int /*<<< orphan*/  PARENB ; 
 long const PARMRK ; 
 long const PARODD ; 
 long const PENDIN ; 
 int POSIX ; 
#define  PPPDISC 131 
#define  SLIPDISC 130 
#define  TAB0 129 
#define  TAB3 128 
 long TABDLY ; 
 long const TOSTOP ; 
 int TTYDISC ; 
 char* WD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct cchar* cchars1 ; 
 char* FUNC2 (struct cchar*,scalar_t__) ; 
 int FUNC3 (struct termios*) ; 
 int FUNC4 (struct termios*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,long const,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,...) ; 

void
FUNC9(struct termios *tp, struct winsize *wp, int ldisc, enum FMT fmt)
{
	struct cchar *p;
	long tmp;
	u_char *cc;
	int cnt, ispeed, ospeed;
	char buf1[100], buf2[100];

	cnt = 0;

	/* Line discipline. */
	if (ldisc != TTYDISC) {
		switch(ldisc) {
		case SLIPDISC:
			cnt += FUNC6("slip disc; ");
			break;
		case PPPDISC:
			cnt += FUNC6("ppp disc; ");
			break;
		default:
			cnt += FUNC6("#%d disc; ", ldisc);
			break;
		}
	}

	/* Line speed. */
	ispeed = FUNC3(tp);
	ospeed = FUNC4(tp);
	if (ispeed != ospeed)
		cnt +=
		    FUNC6("ispeed %d baud; ospeed %d baud;", ispeed, ospeed);
	else
		cnt += FUNC6("speed %d baud;", ispeed);
	if (fmt >= BSD)
		cnt += FUNC6(" %d rows; %d columns;", wp->ws_row, wp->ws_col);
	if (cnt)
		(void)FUNC6("\n");

#define	on(f)	((tmp & (f)) != 0)
#define put(n, f, d) \
	if (fmt >= BSD || on(f) != (d)) \
		bput((n) + on(f));

	/* "local" flags */
	tmp = tp->c_lflag;
	FUNC0("lflags");
	put("-icanon", ICANON, 1);
	put("-isig", ISIG, 1);
	put("-iexten", IEXTEN, 1);
	put("-echo", ECHO, 1);
	put("-echoe", ECHOE, 0);
	put("-echok", ECHOK, 0);
	put("-echoke", ECHOKE, 0);
	put("-echonl", ECHONL, 0);
	put("-echoctl", ECHOCTL, 0);
	put("-echoprt", ECHOPRT, 0);
	put("-altwerase", ALTWERASE, 0);
	put("-noflsh", NOFLSH, 0);
	put("-tostop", TOSTOP, 0);
	put("-flusho", FLUSHO, 0);
	put("-pendin", PENDIN, 0);
	put("-nokerninfo", NOKERNINFO, 0);
	put("-extproc", EXTPROC, 0);

	/* input flags */
	tmp = tp->c_iflag;
	FUNC0("iflags");
	put("-istrip", ISTRIP, 0);
	put("-icrnl", ICRNL, 1);
	put("-inlcr", INLCR, 0);
	put("-igncr", IGNCR, 0);
	put("-ixon", IXON, 1);
	put("-ixoff", IXOFF, 0);
	put("-ixany", IXANY, 1);
	put("-imaxbel", IMAXBEL, 1);
	put("-ignbrk", IGNBRK, 0);
	put("-brkint", BRKINT, 1);
	put("-inpck", INPCK, 0);
	put("-ignpar", IGNPAR, 0);
	put("-parmrk", PARMRK, 0);

	/* output flags */
	tmp = tp->c_oflag;
	FUNC0("oflags");
	put("-opost", OPOST, 1);
	put("-onlcr", ONLCR, 1);
	put("-ocrnl", OCRNL, 0);
	switch(tmp&TABDLY) {
	case TAB0:
		FUNC1("tab0");
		break;
	case TAB3:
		FUNC1("tab3");
		break;
	}
	put("-onocr", ONOCR, 0);
	put("-onlret", ONLRET, 0);

	/* control flags (hardware state) */
	tmp = tp->c_cflag;
	FUNC0("cflags");
	put("-cread", CREAD, 1);
	switch(tmp&CSIZE) {
	case CS5:
		FUNC1("cs5");
		break;
	case CS6:
		FUNC1("cs6");
		break;
	case CS7:
		FUNC1("cs7");
		break;
	case CS8:
		FUNC1("cs8");
		break;
	}
	FUNC1(&"-parenb" [ on(PARENB)]);
	put("-parodd", PARODD, 0);
	put("-hupcl", HUPCL, 1);
	put("-clocal", CLOCAL, 0);
	put("-cstopb", CSTOPB, 0);
	switch(tmp & (CCTS_OFLOW | CRTS_IFLOW)) {
	case CCTS_OFLOW:
		FUNC1("ctsflow");
		break;
	case CRTS_IFLOW:
		FUNC1("rtsflow");
		break;
	default:
		put("-crtscts", CCTS_OFLOW | CRTS_IFLOW, 0);
		break;
	}
	put("-dsrflow", CDSR_OFLOW, 0);
	put("-dtrflow", CDTR_IFLOW, 0);
	put("-mdmbuf", MDMBUF, 0);	/* XXX mdmbuf ==  dtrflow */
	if (on(CNO_RTSDTR))
		FUNC1("-rtsdtr");
	else {
		if (fmt >= BSD)
			FUNC1("rtsdtr");
	}

	/* special control characters */
	cc = tp->c_cc;
	if (fmt == POSIX) {
		FUNC0("cchars");
		for (p = cchars1; p->name; ++p) {
			(void)FUNC8(buf1, sizeof(buf1), "%s = %s;",
			    p->name, FUNC2(p, cc[p->sub]));
			FUNC1(buf1);
		}
		FUNC0(NULL);
	} else {
		FUNC0(NULL);
		for (p = cchars1, cnt = 0; p->name; ++p) {
			if (fmt != BSD && cc[p->sub] == p->def)
				continue;
#define	WD	"%-8s"
			(void)FUNC8(buf1 + cnt * 8, sizeof(buf1) - cnt * 8,
			    WD, p->name);
			(void)FUNC8(buf2 + cnt * 8, sizeof(buf2) - cnt * 8,
			    WD, FUNC2(p, cc[p->sub]));
			if (++cnt == LINELENGTH / 8) {
				cnt = 0;
				(void)FUNC6("%s\n", buf1);
				(void)FUNC6("%s\n", buf2);
			}
		}
		if (cnt) {
			(void)FUNC6("%s\n", buf1);
			(void)FUNC6("%s\n", buf2);
		}
	}
}