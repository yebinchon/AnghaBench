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
struct stat {scalar_t__ st_mtime; scalar_t__ st_size; } ;
struct stackmark {int dummy; } ;

/* Variables and functions */
 scalar_t__* mailtime ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int nmboxes ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct stackmark*) ; 
 int /*<<< orphan*/  FUNC6 (struct stackmark*) ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char*,char) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(int silent)
{
	int i;
	char *mpath;
	char *p;
	char *msg;
	struct stackmark smark;
	struct stat statb;

	if (silent)
		nmboxes = 10;
	if (nmboxes == 0)
		return;
	FUNC6(&smark);
	mpath = FUNC10(FUNC1()? FUNC2() : FUNC0());
	for (i = 0 ; i < nmboxes ; i++) {
		p = mpath;
		if (*p == '\0')
			break;
		mpath = FUNC9(mpath, ':');
		if (*mpath != '\0') {
			*mpath++ = '\0';
			if (p == mpath - 1)
				continue;
		}
		msg = FUNC8(p, '%');
		if (msg != NULL)
			*msg++ = '\0';
#ifdef notdef /* this is what the System V shell claims to do (it lies) */
		if (stat(p, &statb) < 0)
			statb.st_mtime = 0;
		if (statb.st_mtime > mailtime[i] && ! silent) {
			out2str(msg? msg : "you have mail");
			out2c('\n');
		}
		mailtime[i] = statb.st_mtime;
#else /* this is what it should do */
		if (FUNC7(p, &statb) < 0)
			statb.st_size = 0;
		if (statb.st_size > mailtime[i] && ! silent) {
			FUNC4(msg? msg : "you have mail");
			FUNC3('\n');
		}
		mailtime[i] = statb.st_size;
#endif
	}
	nmboxes = i;
	FUNC5(&smark);
}