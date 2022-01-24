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
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_segctor_req {int mode; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_flags; struct nilfs_sb_info* sc_sbi; } ;
struct nilfs_sb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_SC_UNCLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct nilfs_sc_info*,struct nilfs_segctor_req*) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_sc_info*,struct nilfs_segctor_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_sc_info*,struct nilfs_segctor_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_sb_info*,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_sb_info*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nilfs_sc_info *sci, int mode)
{
	struct nilfs_sb_info *sbi = sci->sc_sbi;
	struct nilfs_transaction_info ti;
	struct nilfs_segctor_req req = { .mode = mode };

	FUNC4(sbi, &ti, 0);

	FUNC0(sci, &req);
	FUNC1(sci, &req);
	FUNC2(sci, &req);

	/*
	 * Unclosed segment should be retried.  We do this using sc_timer.
	 * Timeout of sc_timer will invoke complete construction which leads
	 * to close the current logical segment.
	 */
	if (FUNC6(NILFS_SC_UNCLOSED, &sci->sc_flags))
		FUNC3(sci);

	FUNC5(sbi);
}