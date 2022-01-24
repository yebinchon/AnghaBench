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
struct tlock {int type; struct metapage* mp; scalar_t__ next; } ;
struct tblock {int /*<<< orphan*/  waitor; scalar_t__ next; } ;
struct metapage {int xflag; scalar_t__ lid; } ;
typedef  scalar_t__ lid_t ;

/* Variables and functions */
 int COMMIT_PAGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct tlock* FUNC4 (scalar_t__) ; 
 int tlckBTROOT ; 

__attribute__((used)) static void FUNC5(struct tblock * tblk)
{
	struct metapage *mp;
	lid_t lid;
	struct tlock *tlck;

	FUNC0();

	for (lid = tblk->next; lid; lid = tlck->next) {
		tlck = FUNC4(lid);
		if ((mp = tlck->mp) != NULL &&
		    (tlck->type & tlckBTROOT) == 0) {
			FUNC3(mp->xflag & COMMIT_PAGE);
			mp->lid = 0;
		}
	}

	/*
	 * wakeup transactions waiting on a page locked
	 * by the current transaction
	 */
	FUNC2(&tblk->waitor);

	FUNC1();
}