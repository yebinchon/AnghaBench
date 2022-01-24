#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int child_cnt; TYPE_1__* zbranch; } ;
struct ubifs_info {int dummy; } ;
struct qstr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int NAME_GREATER ; 
 int NAME_LESS ; 
 int NAME_MATCHES ; 
 scalar_t__ FUNC0 (struct ubifs_info*,int /*<<< orphan*/ *,union ubifs_key const*) ; 
 int FUNC1 (struct ubifs_info*,TYPE_1__*,struct qstr const*) ; 
 int FUNC2 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 int FUNC3 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c, const union ubifs_key *key,
			     struct ubifs_znode **zn, int *n,
			     const struct qstr *nm)
{
	int err;

	err = FUNC1(c, &(*zn)->zbranch[*n], nm);
	if (FUNC5(err < 0))
		return err;
	if (err == NAME_MATCHES)
		return 1;

	if (err == NAME_GREATER) {
		/* Look left */
		while (1) {
			err = FUNC3(c, zn, n);
			if (err == -ENOENT) {
				FUNC4(*n == 0);
				*n = -1;
				return 0;
			}
			if (err < 0)
				return err;
			if (FUNC0(c, &(*zn)->zbranch[*n].key, key)) {
				/*
				 * We have found the branch after which we would
				 * like to insert, but inserting in this znode
				 * may still be wrong. Consider the following 3
				 * znodes, in the case where we are resolving a
				 * collision with Key2.
				 *
				 *                  znode zp
				 *            ----------------------
				 * level 1     |  Key0  |  Key1  |
				 *            -----------------------
				 *                 |            |
				 *       znode za  |            |  znode zb
				 *          ------------      ------------
				 * level 0  |  Key0  |        |  Key2  |
				 *          ------------      ------------
				 *
				 * The lookup finds Key2 in znode zb. Lets say
				 * there is no match and the name is greater so
				 * we look left. When we find Key0, we end up
				 * here. If we return now, we will insert into
				 * znode za at slot n = 1.  But that is invalid
				 * according to the parent's keys.  Key2 must
				 * be inserted into znode zb.
				 *
				 * Note, this problem is not relevant for the
				 * case when we go right, because
				 * 'tnc_insert()' would correct the parent key.
				 */
				if (*n == (*zn)->child_cnt - 1) {
					err = FUNC2(c, zn, n);
					if (err) {
						/* Should be impossible */
						FUNC4(0);
						if (err == -ENOENT)
							err = -EINVAL;
						return err;
					}
					FUNC4(*n == 0);
					*n = -1;
				}
				return 0;
			}
			err = FUNC1(c, &(*zn)->zbranch[*n], nm);
			if (err < 0)
				return err;
			if (err == NAME_LESS)
				return 0;
			if (err == NAME_MATCHES)
				return 1;
			FUNC4(err == NAME_GREATER);
		}
	} else {
		int nn = *n;
		struct ubifs_znode *znode = *zn;

		/* Look right */
		while (1) {
			err = FUNC2(c, &znode, &nn);
			if (err == -ENOENT)
				return 0;
			if (err < 0)
				return err;
			if (FUNC0(c, &znode->zbranch[nn].key, key))
				return 0;
			err = FUNC1(c, &znode->zbranch[nn], nm);
			if (err < 0)
				return err;
			if (err == NAME_GREATER)
				return 0;
			*zn = znode;
			*n = nn;
			if (err == NAME_MATCHES)
				return 1;
			FUNC4(err == NAME_LESS);
		}
	}
}