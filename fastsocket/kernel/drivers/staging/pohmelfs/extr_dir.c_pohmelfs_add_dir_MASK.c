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
struct qstr {char* name; int /*<<< orphan*/  hash; scalar_t__ len; } ;
struct pohmelfs_sb {int dummy; } ;
struct pohmelfs_name {unsigned int mode; int /*<<< orphan*/  data; int /*<<< orphan*/  hash; scalar_t__ len; int /*<<< orphan*/  ino; } ;
struct pohmelfs_inode {int /*<<< orphan*/  offset_lock; int /*<<< orphan*/  ino; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct pohmelfs_name*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pohmelfs_inode*,struct pohmelfs_name*) ; 
 struct pohmelfs_name* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct pohmelfs_sb *psb, struct pohmelfs_inode *parent,
		struct pohmelfs_inode *npi, struct qstr *str, unsigned int mode, int link)
{
	int err = -ENOMEM;
	struct pohmelfs_name *n;

	n = FUNC4(str->len + 1);
	if (!n)
		goto err_out_exit;

	n->ino = npi->ino;
	n->mode = mode;
	n->len = str->len;
	n->hash = str->hash;
	FUNC5(n->data, "%s", str->name);

	FUNC1(&parent->offset_lock);
	err = FUNC3(parent, n);
	FUNC2(&parent->offset_lock);

	if (err) {
		if (err != -EEXIST)
			goto err_out_free;
		FUNC0(n);
	}

	return 0;

err_out_free:
	FUNC0(n);
err_out_exit:
	return err;
}