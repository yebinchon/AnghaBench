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
struct pcxhr_rmh {int dummy; } ;
struct pcxhr_mgr {int /*<<< orphan*/  msg_lock; } ;

/* Variables and functions */
 int FUNC0 (struct pcxhr_mgr*,struct pcxhr_rmh*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct pcxhr_mgr *mgr, struct pcxhr_rmh *rmh)
{
	unsigned long flags;
	int err;
	FUNC1(&mgr->msg_lock, flags);
	err = FUNC0(mgr, rmh);
	FUNC2(&mgr->msg_lock, flags);
	return err;
}