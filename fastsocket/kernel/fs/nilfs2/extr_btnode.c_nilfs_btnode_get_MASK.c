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
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int EEXIST ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

int FUNC5(struct address_space *btnc, __u64 blocknr,
		     sector_t pblocknr, struct buffer_head **pbh, int newblk)
{
	struct buffer_head *bh;
	int err;

	err = FUNC2(btnc, blocknr, pblocknr, pbh, newblk);
	if (err == -EEXIST) /* internal code (cache hit) */
		return 0;
	if (FUNC3(err))
		return err;

	bh = *pbh;
	FUNC4(bh);
	if (!FUNC1(bh)) {
		FUNC0(bh);
		return -EIO;
	}
	return 0;
}