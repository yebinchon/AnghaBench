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
struct journal_head {scalar_t__ b_committed_data; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  ext3_grpblk_t ;

/* Variables and functions */
 struct journal_head* FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

__attribute__((used)) static inline int
FUNC6(spinlock_t *lock, ext3_grpblk_t block, struct buffer_head *bh)
{
	struct journal_head *jh = FUNC0(bh);
	int ret;

	if (FUNC2(lock, block, bh->b_data))
		return 0;
	FUNC4(bh);
	if (jh->b_committed_data && FUNC3(block,jh->b_committed_data)) {
		FUNC1(lock, block, bh->b_data);
		ret = 0;
	} else {
		ret = 1;
	}
	FUNC5(bh);
	return ret;
}