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
struct reiserfs_jh {int /*<<< orphan*/  list; int /*<<< orphan*/ * bh; } ;
struct buffer_head {struct reiserfs_jh* b_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct reiserfs_jh*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_reiserfs_jh ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

void FUNC6(struct buffer_head *bh)
{
	struct reiserfs_jh *jh;

	jh = bh->b_private;
	if (jh) {
		bh->b_private = NULL;
		jh->bh = NULL;
		FUNC4(&jh->list);
		FUNC3(jh);
		if (FUNC2(&nr_reiserfs_jh) <= 0)
			FUNC0();
		FUNC1(&nr_reiserfs_jh);
		FUNC5(bh);
	}
}