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
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int /*<<< orphan*/  key; int /*<<< orphan*/  nlen; int /*<<< orphan*/ * name; int /*<<< orphan*/  inum; } ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/ * name; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ubifs_dent_node*) ; 
 int FUNC1 (struct ubifs_dent_node*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,union ubifs_key*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,int /*<<< orphan*/ *,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_dent_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,union ubifs_key*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,union ubifs_key*,scalar_t__) ; 
 struct ubifs_dent_node* FUNC10 (struct ubifs_info*,union ubifs_key*,struct qstr*) ; 
 int FUNC11 (struct ubifs_info*,union ubifs_key*,struct qstr*) ; 
 int FUNC12 (struct ubifs_info*,union ubifs_key*,union ubifs_key*) ; 

int FUNC13(struct ubifs_info *c, ino_t inum)
{
	union ubifs_key key1, key2;
	struct ubifs_dent_node *xent, *pxent = NULL;
	struct qstr nm = { .name = NULL };

	FUNC2("ino %lu", (unsigned long)inum);

	/*
	 * Walk all extended attribute entries and remove them together with
	 * corresponding extended attribute inodes.
	 */
	FUNC9(c, &key1, inum);
	while (1) {
		ino_t xattr_inum;
		int err;

		xent = FUNC10(c, &key1, &nm);
		if (FUNC0(xent)) {
			err = FUNC1(xent);
			if (err == -ENOENT)
				break;
			return err;
		}

		xattr_inum = FUNC7(xent->inum);
		FUNC2("xent '%s', ino %lu", xent->name,
			(unsigned long)xattr_inum);

		nm.name = xent->name;
		nm.len = FUNC6(xent->nlen);
		err = FUNC11(c, &key1, &nm);
		if (err) {
			FUNC5(xent);
			return err;
		}

		FUNC8(c, &key1, xattr_inum);
		FUNC3(c, &key2, xattr_inum);
		err = FUNC12(c, &key1, &key2);
		if (err) {
			FUNC5(xent);
			return err;
		}

		FUNC5(pxent);
		pxent = xent;
		FUNC4(c, &xent->key, &key1);
	}

	FUNC5(pxent);
	FUNC8(c, &key1, inum);
	FUNC3(c, &key2, inum);

	return FUNC12(c, &key1, &key2);
}