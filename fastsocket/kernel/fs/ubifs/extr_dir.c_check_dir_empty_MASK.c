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
struct ubifs_dent_node {int dummy; } ;
struct qstr {int /*<<< orphan*/ * name; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTEMPTY ; 
 scalar_t__ FUNC0 (struct ubifs_dent_node*) ; 
 int FUNC1 (struct ubifs_dent_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_dent_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 struct ubifs_dent_node* FUNC4 (struct ubifs_info*,union ubifs_key*,struct qstr*) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c, struct inode *dir)
{
	struct qstr nm = { .name = NULL };
	struct ubifs_dent_node *dent;
	union ubifs_key key;
	int err;

	FUNC3(c, &key, dir->i_ino);
	dent = FUNC4(c, &key, &nm);
	if (FUNC0(dent)) {
		err = FUNC1(dent);
		if (err == -ENOENT)
			err = 0;
	} else {
		FUNC2(dent);
		err = -ENOTEMPTY;
	}
	return err;
}