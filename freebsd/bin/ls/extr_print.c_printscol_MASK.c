#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  s_block; int /*<<< orphan*/  s_inode; TYPE_1__* list; } ;
struct TYPE_6__ {struct TYPE_6__* fts_link; } ;
typedef  TYPE_1__ FTSENT ;
typedef  TYPE_2__ DISPLAY ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

void
FUNC3(const DISPLAY *dp)
{
	FTSENT *p;

	for (p = dp->list; p; p = p->fts_link) {
		if (FUNC0(p))
			continue;
		(void)FUNC1(p, dp->s_inode, dp->s_block);
		(void)FUNC2('\n');
	}
}