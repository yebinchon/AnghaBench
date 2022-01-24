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
struct ubifs_znode {int dummy; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_znode*) ; 
 int FUNC1 (struct ubifs_znode*) ; 
 struct ubifs_znode* FUNC2 (struct ubifs_info*,struct ubifs_znode*) ; 
 struct ubifs_znode* FUNC3 (struct ubifs_info*,union ubifs_key*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct ubifs_info *c, union ubifs_key *key, int level,
			 int lnum, int offs)
{
	struct ubifs_znode *znode;
	int err = 0;

	FUNC4(&c->tnc_mutex);
	znode = FUNC3(c, key, level, lnum, offs);
	if (!znode)
		goto out_unlock;
	if (FUNC0(znode)) {
		err = FUNC1(znode);
		goto out_unlock;
	}
	znode = FUNC2(c, znode);
	if (FUNC0(znode)) {
		err = FUNC1(znode);
		goto out_unlock;
	}

out_unlock:
	FUNC5(&c->tnc_mutex);
	return err;
}