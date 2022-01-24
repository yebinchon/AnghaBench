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
struct buffer_head {int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_page; int /*<<< orphan*/  b_state; int /*<<< orphan*/  b_count; scalar_t__ b_blocknr; int /*<<< orphan*/  b_size; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 

__attribute__((used)) static void FUNC6(char *buf, struct buffer_head *bh)
{
	char b[BDEVNAME_SIZE];

	FUNC5(buf,
		"dev %s, size %zd, blocknr %llu, count %d, state 0x%lx, page %p, (%s, %s, %s)",
		FUNC1(bh->b_bdev, b), bh->b_size,
		(unsigned long long)bh->b_blocknr, FUNC0(&(bh->b_count)),
		bh->b_state, bh->b_page,
		FUNC4(bh) ? "UPTODATE" : "!UPTODATE",
		FUNC2(bh) ? "DIRTY" : "CLEAN",
		FUNC3(bh) ? "LOCKED" : "UNLOCKED");
}