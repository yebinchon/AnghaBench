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
struct reiserfs_key {int dummy; } ;
struct disk_child {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 struct disk_child* FUNC2 (struct buffer_head*,int) ; 
 struct reiserfs_key* FUNC3 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,struct buffer_head*,...) ; 

__attribute__((used)) static int FUNC7(struct buffer_head *bh, int first, int last)
{
	struct reiserfs_key *key;
	struct disk_child *dc;
	int i;
	int from, to;

	if (!FUNC0(bh))
		return 1;

	FUNC4(bh);

	if (first == -1) {
		from = 0;
		to = FUNC1(bh);
	} else {
		from = first;
		to = last < FUNC1(bh) ? last : FUNC1(bh);
	}

	FUNC6("INTERNAL NODE (%ld) contains %z\n", bh->b_blocknr, bh);

	dc = FUNC2(bh, from);
	FUNC6("PTR %d: %y ", from, dc);

	for (i = from, key = FUNC3(bh, from), dc++; i < to;
	     i++, key++, dc++) {
		FUNC6("KEY %d: %k PTR %d: %y ", i, key, i + 1, dc);
		if (i && i % 4 == 0)
			FUNC5("\n");
	}
	FUNC5("\n");
	return 0;
}