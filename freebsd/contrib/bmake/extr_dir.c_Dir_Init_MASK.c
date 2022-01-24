#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int refCount; int /*<<< orphan*/  files; int /*<<< orphan*/  name; scalar_t__ hits; } ;
typedef  int /*<<< orphan*/  Path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* dirSearchPath ; 
 TYPE_1__* dotLast ; 
 int /*<<< orphan*/  lmtimes ; 
 int /*<<< orphan*/  mtimes ; 
 void* openDirectories ; 

void
FUNC5(const char *cdname)
{
    if (!cdname) {
	dirSearchPath = FUNC2(FALSE);
	openDirectories = FUNC2(FALSE);
	FUNC1(&mtimes, 0);
	FUNC1(&lmtimes, 0);
	return;
    }
    FUNC0(cdname);

    dotLast = FUNC3(sizeof(Path));
    dotLast->refCount = 1;
    dotLast->hits = 0;
    dotLast->name = FUNC4(".DOTLAST");
    FUNC1(&dotLast->files, -1);
}