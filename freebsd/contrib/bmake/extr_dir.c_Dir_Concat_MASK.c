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
typedef  TYPE_1__ Path ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  int /*<<< orphan*/  Lst ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(Lst path1, Lst path2)
{
    LstNode ln;
    Path    *p;

    for (ln = FUNC2(path2); ln != NULL; ln = FUNC4(ln)) {
	p = (Path *)FUNC1(ln);
	if (FUNC3(path1, p) == NULL) {
	    p->refCount += 1;
	    (void)FUNC0(path1, p);
	}
    }
}