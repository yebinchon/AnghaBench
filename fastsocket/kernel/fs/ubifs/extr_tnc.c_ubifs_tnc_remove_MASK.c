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
 int /*<<< orphan*/  FUNC0 (union ubifs_key const*) ; 
 int FUNC1 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ubifs_info*,struct ubifs_znode*,int) ; 

int FUNC7(struct ubifs_info *c, const union ubifs_key *key)
{
	int found, n, err = 0;
	struct ubifs_znode *znode;

	FUNC4(&c->tnc_mutex);
	FUNC2("key %s", FUNC0(key));
	found = FUNC3(c, key, &znode, &n);
	if (found < 0) {
		err = found;
		goto out_unlock;
	}
	if (found == 1)
		err = FUNC6(c, znode, n);
	if (!err)
		err = FUNC1(c, 0);

out_unlock:
	FUNC5(&c->tnc_mutex);
	return err;
}