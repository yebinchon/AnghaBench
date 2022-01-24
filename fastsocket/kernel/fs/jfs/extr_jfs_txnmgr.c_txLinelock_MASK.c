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
struct tlock {int flag; } ;
struct linelock {int flag; scalar_t__ next; scalar_t__ index; int /*<<< orphan*/  maxcnt; } ;
typedef  scalar_t__ lid_t ;

/* Variables and functions */
 int /*<<< orphan*/  TLOCKLONG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct tlock* FUNC2 (scalar_t__) ; 
 int tlckDIRECTORY ; 
 int tlckLINELOCK ; 
 scalar_t__ FUNC3 () ; 

struct linelock *FUNC4(struct linelock * tlock)
{
	lid_t lid;
	struct tlock *tlck;
	struct linelock *linelock;

	FUNC0();

	/* allocate a TxLock structure */
	lid = FUNC3();
	tlck = FUNC2(lid);

	FUNC1();

	/* initialize linelock */
	linelock = (struct linelock *) tlck;
	linelock->next = 0;
	linelock->flag = tlckLINELOCK;
	linelock->maxcnt = TLOCKLONG;
	linelock->index = 0;
	if (tlck->flag & tlckDIRECTORY)
		linelock->flag |= tlckDIRECTORY;

	/* append linelock after tlock */
	linelock->next = tlock->next;
	tlock->next = lid;

	return linelock;
}