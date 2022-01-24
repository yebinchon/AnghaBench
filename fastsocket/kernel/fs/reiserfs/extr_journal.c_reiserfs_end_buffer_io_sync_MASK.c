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
struct buffer_head {int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_blocknr; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC7(struct buffer_head *bh, int uptodate)
{
	char b[BDEVNAME_SIZE];

	if (FUNC1(bh)) {
		FUNC3(NULL, "clm-2084",
				 "pinned buffer %lu:%s sent to disk",
				 bh->b_blocknr, FUNC0(bh->b_bdev, b));
	}
	if (uptodate)
		FUNC5(bh);
	else
		FUNC2(bh);

	FUNC6(bh);
	FUNC4(bh);
}