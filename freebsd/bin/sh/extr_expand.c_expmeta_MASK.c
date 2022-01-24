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
struct stat {int dummy; } ;
struct dirent {char* d_name; int d_namlen; scalar_t__ d_type; } ;
struct arglist {int dummy; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 char const CTLESC ; 
 scalar_t__ DT_DIR ; 
 scalar_t__ DT_LNK ; 
 scalar_t__ DT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct arglist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* expdir ; 
 char* expdir_end ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(char *enddir, char *name, struct arglist *arglist)
{
	const char *p;
	const char *q;
	const char *start;
	char *endname;
	int metaflag;
	struct stat statb;
	DIR *dirp;
	struct dirent *dp;
	int atend;
	int matchdot;
	int esc;
	int namlen;

	metaflag = 0;
	start = name;
	for (p = name; esc = 0, *p; p += esc + 1) {
		if (*p == '*' || *p == '?')
			metaflag = 1;
		else if (*p == '[') {
			q = p + 1;
			if (*q == '!' || *q == '^')
				q++;
			for (;;) {
				if (*q == CTLESC)
					q++;
				if (*q == '/' || *q == '\0')
					break;
				if (*++q == ']') {
					metaflag = 1;
					break;
				}
			}
		} else if (*p == '\0')
			break;
		else {
			if (*p == CTLESC)
				esc++;
			if (p[esc] == '/') {
				if (metaflag)
					break;
				start = p + esc + 1;
			}
		}
	}
	if (metaflag == 0) {	/* we've reached the end of the file name */
		if (enddir != expdir)
			metaflag++;
		for (p = name ; ; p++) {
			if (*p == CTLESC)
				p++;
			*enddir++ = *p;
			if (*p == '\0')
				break;
			if (enddir == expdir_end)
				return;
		}
		if (metaflag == 0 || FUNC3(expdir, &statb) >= 0)
			FUNC0(arglist, FUNC8(expdir));
		return;
	}
	endname = name + (p - name);
	if (start != name) {
		p = name;
		while (p < start) {
			if (*p == CTLESC)
				p++;
			*enddir++ = *p++;
			if (enddir == expdir_end)
				return;
		}
	}
	if (enddir == expdir) {
		p = ".";
	} else if (enddir == expdir + 1 && *expdir == '/') {
		p = "/";
	} else {
		p = expdir;
		enddir[-1] = '\0';
	}
	if ((dirp = FUNC5(p)) == NULL)
		return;
	if (enddir != expdir)
		enddir[-1] = '/';
	if (*endname == 0) {
		atend = 1;
	} else {
		atend = 0;
		*endname = '\0';
		endname += esc + 1;
	}
	matchdot = 0;
	p = start;
	if (*p == CTLESC)
		p++;
	if (*p == '.')
		matchdot++;
	while (! FUNC2() && (dp = FUNC7(dirp)) != NULL) {
		if (dp->d_name[0] == '.' && ! matchdot)
			continue;
		if (FUNC6(start, dp->d_name)) {
			namlen = dp->d_namlen;
			if (enddir + namlen + 1 > expdir_end)
				continue;
			FUNC4(enddir, dp->d_name, namlen + 1);
			if (atend)
				FUNC0(arglist, FUNC8(expdir));
			else {
				if (dp->d_type != DT_UNKNOWN &&
				    dp->d_type != DT_DIR &&
				    dp->d_type != DT_LNK)
					continue;
				if (enddir + namlen + 2 > expdir_end)
					continue;
				enddir[namlen] = '/';
				enddir[namlen + 1] = '\0';
				FUNC9(enddir + namlen + 1, endname, arglist);
			}
		}
	}
	FUNC1(dirp);
	if (! atend)
		endname[-esc - 1] = esc ? CTLESC : '/';
}