#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_1__* s_bdev; } ;
struct lrd {int /*<<< orphan*/  aggregate; scalar_t__ length; int /*<<< orphan*/  type; scalar_t__ backchain; scalar_t__ logtid; } ;
struct jfs_log {int dummy; } ;
struct TYPE_4__ {struct jfs_log* log; } ;
struct TYPE_3__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  LOG_MOUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jfs_log*,int /*<<< orphan*/ *,struct lrd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb)
{
	struct jfs_log *log = FUNC0(sb)->log;
	struct lrd lrd;

	lrd.logtid = 0;
	lrd.backchain = 0;
	lrd.type = FUNC1(LOG_MOUNT);
	lrd.length = 0;
	lrd.aggregate = FUNC2(FUNC4(sb->s_bdev->bd_dev));
	FUNC3(log, NULL, &lrd, NULL);

	return 0;
}