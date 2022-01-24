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
struct ubifs_info {unsigned long long max_sqnum; int /*<<< orphan*/  cnt_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 unsigned long long SQNUM_WARN_WATERMARK ; 
 unsigned long long SQNUM_WATERMARK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static unsigned long long FUNC6(struct ubifs_info *c)
{
	unsigned long long sqnum;

	FUNC0(&c->cnt_lock);
	sqnum = ++c->max_sqnum;
	FUNC1(&c->cnt_lock);

	if (FUNC5(sqnum >= SQNUM_WARN_WATERMARK)) {
		if (sqnum >= SQNUM_WATERMARK) {
			FUNC2("sequence number overflow %llu, end of life",
				  sqnum);
			FUNC3(c, -EINVAL);
		}
		FUNC4("running out of sequence numbers, end of life soon");
	}

	return sqnum;
}