#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct jfs_log {int /*<<< orphan*/  syncwait; int /*<<< orphan*/  flag; } ;
struct TYPE_2__ {struct jfs_log* log; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  log_QUIESCE ; 

void FUNC3(struct super_block *sb)
{
	struct jfs_log *log = FUNC0(sb)->log;

	FUNC2(log_QUIESCE, &log->flag);
	FUNC1(&log->syncwait);
}