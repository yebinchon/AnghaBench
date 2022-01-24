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
struct ubifs_zbranch {scalar_t__ len; scalar_t__ leaf; int /*<<< orphan*/  key; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ubifs_info*,struct ubifs_zbranch*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ubifs_info*,struct ubifs_zbranch*,void*) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c, struct ubifs_zbranch *zbr,
			    void *node)
{
	int err;

	FUNC3(FUNC0(c, &zbr->key));

	if (zbr->leaf) {
		/* Read from the leaf node cache */
		FUNC3(zbr->len != 0);
		FUNC2(node, zbr->leaf, zbr->len);
		return 0;
	}

	err = FUNC4(c, zbr, node);
	if (err)
		return err;

	/* Add the node to the leaf node cache */
	err = FUNC1(c, zbr, node);
	return err;
}