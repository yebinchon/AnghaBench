#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  llink ;
struct TYPE_5__ {char* p_path; } ;
struct TYPE_4__ {char* fts_path; int /*<<< orphan*/  fts_statp; } ;
typedef  TYPE_1__ FTSENT ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ nflag ; 
 scalar_t__ pflag ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 TYPE_2__ to ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int
FUNC6(const FTSENT *p, int exists)
{
	int len;
	char llink[PATH_MAX];

	if (exists && nflag) {
		if (vflag)
			FUNC0("%s not overwritten\n", to.p_path);
		return (1);
	}
	if ((len = FUNC1(p->fts_path, llink, sizeof(llink) - 1)) == -1) {
		FUNC5("readlink: %s", p->fts_path);
		return (1);
	}
	llink[len] = '\0';
	if (exists && FUNC4(to.p_path)) {
		FUNC5("unlink: %s", to.p_path);
		return (1);
	}
	if (FUNC3(llink, to.p_path)) {
		FUNC5("symlink: %s", llink);
		return (1);
	}
	return (pflag ? FUNC2(p->fts_statp, -1) : 0);
}