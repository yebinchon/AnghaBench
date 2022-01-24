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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_zbranch {int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; } ;
struct ubifs_info {scalar_t__ replaying; } ;
struct ubifs_dent_node {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ubifs_key const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int /*<<< orphan*/ *,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,union ubifs_key const*) ; 
 scalar_t__ FUNC5 (struct ubifs_info*,union ubifs_key const*,union ubifs_key*) ; 
 int FUNC6 (struct ubifs_info*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ubifs_info *c, const union ubifs_key *key,
			      struct ubifs_zbranch *zbr, void *node)
{
	int ret;

	FUNC2("LEB %d:%d, key %s", zbr->lnum, zbr->offs, FUNC0(key));

	ret = FUNC6(c, node, FUNC4(c, key), zbr->len, zbr->lnum,
			    zbr->offs);
	if (ret == 1) {
		union ubifs_key node_key;
		struct ubifs_dent_node *dent = node;

		/* All nodes have key in the same place */
		FUNC3(c, &dent->key, &node_key);
		if (FUNC5(c, key, &node_key) != 0)
			ret = 0;
	}
	if (ret == 0 && c->replaying)
		FUNC1("dangling branch LEB %d:%d len %d, key %s",
			zbr->lnum, zbr->offs, zbr->len, FUNC0(key));
	return ret;
}