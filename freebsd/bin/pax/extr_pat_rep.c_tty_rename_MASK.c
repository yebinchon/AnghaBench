#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmpname ;
struct TYPE_4__ {char* name; size_t nlen; } ;
typedef  TYPE_1__ ARCHD ;

/* Variables and functions */
 int PAXPATHLEN ; 
 int FUNC0 (char*,size_t,char*) ; 
 char* argv0 ; 
 size_t FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*,int) ; 

__attribute__((used)) static int
FUNC7(ARCHD *arcn)
{
	char tmpname[PAXPATHLEN+2];
	int res;

	/*
	 * prompt user for the replacement name for a file, keep trying until
	 * we get some reasonable input. Archives may have more than one file
	 * on them with the same name (from updates etc). We print verbose info
	 * on the file so the user knows what is up.
	 */
	FUNC5("\nATTENTION: %s interactive file rename operation.\n", argv0);

	for (;;) {
		FUNC2(arcn);
		FUNC5("Input new name, or a \".\" to keep the old name, ");
		FUNC5("or a \"return\" to skip this file.\n");
		FUNC5("Input > ");
		if (FUNC6(tmpname, sizeof(tmpname)) < 0)
			return(-1);
		if (FUNC3(tmpname, "..") == 0) {
			FUNC5("Try again, illegal file name: ..\n");
			continue;
		}
		if (FUNC4(tmpname) > PAXPATHLEN) {
			FUNC5("Try again, file name too long\n");
			continue;
		}
		break;
	}

	/*
	 * empty file name, skips this file. a "." leaves it alone
	 */
	if (tmpname[0] == '\0') {
		FUNC5("Skipping file.\n");
		return(1);
	}
	if ((tmpname[0] == '.') && (tmpname[1] == '\0')) {
		FUNC5("Processing continues, name unchanged.\n");
		return(0);
	}

	/*
	 * ok the name changed. We may run into links that point at this
	 * file later. we have to remember where the user sent the file
	 * in order to repair any links.
	 */
	FUNC5("Processing continues, name changed to: %s\n", tmpname);
	res = FUNC0(arcn->name, arcn->nlen, tmpname);
	arcn->nlen = FUNC1(arcn->name, tmpname, sizeof(arcn->name) - 1);
	arcn->name[arcn->nlen] = '\0';
	if (res < 0)
		return(-1);
	return(0);
}