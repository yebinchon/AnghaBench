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
struct srcimp_mgr {int /*<<< orphan*/  mgr; int /*<<< orphan*/  imap_lock; int /*<<< orphan*/  imappers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct srcimp_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct srcimp_mgr *srcimp_mgr)
{
	unsigned long flags;

	/* free src input mapper list */
	FUNC3(&srcimp_mgr->imap_lock, flags);
	FUNC0(&srcimp_mgr->imappers);
	FUNC4(&srcimp_mgr->imap_lock, flags);

	FUNC2(&srcimp_mgr->mgr);
	FUNC1(srcimp_mgr);

	return 0;
}