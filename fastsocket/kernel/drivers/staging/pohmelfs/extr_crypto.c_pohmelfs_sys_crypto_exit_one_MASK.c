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
struct pohmelfs_sb {int /*<<< orphan*/  crypto_thread_lock; int /*<<< orphan*/  crypto_thread_num; } ;
struct pohmelfs_crypto_thread {int /*<<< orphan*/  eng; int /*<<< orphan*/  thread_entry; scalar_t__ thread; struct pohmelfs_sb* psb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pohmelfs_crypto_thread*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct pohmelfs_crypto_thread *t)
{
	struct pohmelfs_sb *psb = t->psb;

	if (t->thread)
		FUNC1(t->thread);

	FUNC3(&psb->crypto_thread_lock);
	FUNC2(&t->thread_entry);
	psb->crypto_thread_num--;
	FUNC4(&psb->crypto_thread_lock);

	FUNC5(&t->eng);
	FUNC6(&t->eng);
	FUNC0(t);
}