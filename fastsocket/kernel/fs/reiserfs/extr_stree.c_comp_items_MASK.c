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
struct treepath {int dummy; } ;
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  IH_SIZE ; 
 scalar_t__ FUNC2 (struct treepath const*) ; 
 struct buffer_head* FUNC3 (struct treepath const*) ; 
 struct item_head* FUNC4 (struct treepath const*) ; 
 int FUNC5 (struct item_head const*,struct item_head*,int /*<<< orphan*/ ) ; 

int FUNC6(const struct item_head *stored_ih, const struct treepath *path)
{
	struct buffer_head *bh = FUNC3(path);
	struct item_head *ih;

	/* Last buffer at the path is not in the tree. */
	if (!FUNC0(bh))
		return 1;

	/* Last path position is invalid. */
	if (FUNC2(path) >= FUNC1(bh))
		return 1;

	/* we need only to know, whether it is the same item */
	ih = FUNC4(path);
	return FUNC5(stored_ih, ih, IH_SIZE);
}