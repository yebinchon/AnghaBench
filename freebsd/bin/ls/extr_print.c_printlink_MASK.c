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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_5__ {scalar_t__ fts_level; char* fts_name; TYPE_1__* fts_parent; } ;
struct TYPE_4__ {char* fts_accpath; } ;
typedef  TYPE_2__ FTSENT ;

/* Variables and functions */
 scalar_t__ FTS_ROOTLEVEL ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(const FTSENT *p)
{
	int lnklen;
	char name[MAXPATHLEN + 1];
	char path[MAXPATHLEN + 1];

	if (p->fts_level == FTS_ROOTLEVEL)
		(void)FUNC4(name, sizeof(name), "%s", p->fts_name);
	else
		(void)FUNC4(name, sizeof(name),
		    "%s/%s", p->fts_parent->fts_accpath, p->fts_name);
	if ((lnklen = FUNC3(name, path, sizeof(path) - 1)) == -1) {
		(void)FUNC0(stderr, "\nls: %s: %s\n", name, FUNC5(errno));
		return;
	}
	path[lnklen] = '\0';
	(void)FUNC1(" -> ");
	(void)FUNC2(path);
}