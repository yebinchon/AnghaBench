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
struct ubifs_zbranch {void* leaf; int /*<<< orphan*/  len; int /*<<< orphan*/  key; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*,struct ubifs_dent_node const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ubifs_info*,struct ubifs_dent_node const*) ; 

__attribute__((used)) static int FUNC7(struct ubifs_info *c, struct ubifs_zbranch *zbr,
		   const void *node)
{
	int err;
	void *lnc_node;
	const struct ubifs_dent_node *dent = node;

	FUNC5(!zbr->leaf);
	FUNC5(zbr->len != 0);
	FUNC5(FUNC2(c, &zbr->key));

	err = FUNC6(c, dent);
	if (err) {
		FUNC1();
		FUNC0(c, dent);
		return err;
	}

	lnc_node = FUNC3(zbr->len, GFP_NOFS);
	if (!lnc_node)
		/* We don't have to have the cache, so no error */
		return 0;

	FUNC4(lnc_node, node, zbr->len);
	zbr->leaf = lnc_node;
	return 0;
}