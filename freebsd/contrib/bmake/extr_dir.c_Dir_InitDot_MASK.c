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
struct TYPE_4__ {int refCount; } ;
typedef  int /*<<< orphan*/  LstNode ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* dot ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  openDirectories ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(void)
{
    if (dot != NULL) {
	LstNode ln;

	/* Remove old entry from openDirectories, but do not destroy. */
	ln = FUNC3(openDirectories, dot);
	(void)FUNC4(openDirectories, ln);
    }

    dot = FUNC0(NULL, ".");

    if (dot == NULL) {
	FUNC2("Cannot open `.' (%s)", FUNC6(errno));
	FUNC5(1);
    }

    /*
     * We always need to have dot around, so we increment its reference count
     * to make sure it's not destroyed.
     */
    dot->refCount += 1;
    FUNC1();			/* initialize */
}