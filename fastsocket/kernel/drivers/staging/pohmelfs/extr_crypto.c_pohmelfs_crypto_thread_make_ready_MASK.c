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
struct pohmelfs_sb {int /*<<< orphan*/  wait; int /*<<< orphan*/  crypto_thread_lock; int /*<<< orphan*/  crypto_ready_list; } ;
struct pohmelfs_crypto_thread {int /*<<< orphan*/  thread_entry; int /*<<< orphan*/ * trans; int /*<<< orphan*/ * page; struct pohmelfs_sb* psb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct pohmelfs_crypto_thread *th)
{
	struct pohmelfs_sb *psb = th->psb;

	th->page = NULL;
	th->trans = NULL;

	FUNC1(&psb->crypto_thread_lock);
	FUNC0(&th->thread_entry, &psb->crypto_ready_list);
	FUNC2(&psb->crypto_thread_lock);
	FUNC3(&psb->wait);
}