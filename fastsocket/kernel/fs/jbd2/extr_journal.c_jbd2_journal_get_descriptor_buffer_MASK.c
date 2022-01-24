#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct journal_head {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  j_blocksize; int /*<<< orphan*/  j_dev; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 
 struct journal_head* FUNC2 (struct buffer_head*) ; 
 int FUNC3 (TYPE_1__*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

struct journal_head *FUNC8(journal_t *journal)
{
	struct buffer_head *bh;
	unsigned long long blocknr;
	int err;

	err = FUNC3(journal, &blocknr);

	if (err)
		return NULL;

	bh = FUNC1(journal->j_dev, blocknr, journal->j_blocksize);
	if (!bh)
		return NULL;
	FUNC4(bh);
	FUNC5(bh->b_data, 0, journal->j_blocksize);
	FUNC6(bh);
	FUNC7(bh);
	FUNC0(bh, "return this buffer");
	return FUNC2(bh);
}