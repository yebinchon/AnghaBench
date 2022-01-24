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
struct mb_cache_entry {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_bdev; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  h_hash; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct buffer_head*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*,char*,...) ; 
 int /*<<< orphan*/  ext3_xattr_cache ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct mb_cache_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mb_cache_entry*) ; 
 int FUNC5 (struct mb_cache_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mb_cache_entry*) ; 

__attribute__((used)) static void
FUNC7(struct buffer_head *bh)
{
	__u32 hash = FUNC2(FUNC0(bh)->h_hash);
	struct mb_cache_entry *ce;
	int error;

	ce = FUNC3(ext3_xattr_cache, GFP_NOFS);
	if (!ce) {
		FUNC1(bh, "out of memory");
		return;
	}
	error = FUNC5(ce, bh->b_bdev, bh->b_blocknr, &hash);
	if (error) {
		FUNC4(ce);
		if (error == -EBUSY) {
			FUNC1(bh, "already in cache");
			error = 0;
		}
	} else {
		FUNC1(bh, "inserting [%x]", (int)hash);
		FUNC6(ce);
	}
}