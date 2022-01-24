#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mb_cache_entry {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_bdev; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_5__ {int /*<<< orphan*/  h_hash; } ;
struct TYPE_4__ {int /*<<< orphan*/  c_entry_count; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 TYPE_3__* FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,char*,int,...) ; 
 TYPE_1__* ext2_xattr_cache ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct mb_cache_entry* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mb_cache_entry*) ; 
 int FUNC6 (struct mb_cache_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct mb_cache_entry*) ; 

__attribute__((used)) static int
FUNC8(struct buffer_head *bh)
{
	__u32 hash = FUNC3(FUNC0(bh)->h_hash);
	struct mb_cache_entry *ce;
	int error;

	ce = FUNC4(ext2_xattr_cache, GFP_NOFS);
	if (!ce)
		return -ENOMEM;
	error = FUNC6(ce, bh->b_bdev, bh->b_blocknr, &hash);
	if (error) {
		FUNC5(ce);
		if (error == -EBUSY) {
			FUNC2(bh, "already in cache (%d cache entries)",
				FUNC1(&ext2_xattr_cache->c_entry_count));
			error = 0;
		}
	} else {
		FUNC2(bh, "inserting [%x] (%d cache entries)", (int)hash,
			  FUNC1(&ext2_xattr_cache->c_entry_count));
		FUNC7(ce);
	}
	return error;
}