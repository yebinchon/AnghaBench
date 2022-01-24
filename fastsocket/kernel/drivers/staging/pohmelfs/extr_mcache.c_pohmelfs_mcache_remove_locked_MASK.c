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
struct pohmelfs_sb {int /*<<< orphan*/  mcache_lock; } ;
struct pohmelfs_mcache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pohmelfs_sb*,struct pohmelfs_mcache*) ; 

void FUNC3(struct pohmelfs_sb *psb, struct pohmelfs_mcache *m)
{
	FUNC0(&psb->mcache_lock);
	FUNC2(psb, m);
	FUNC1(&psb->mcache_lock);
}