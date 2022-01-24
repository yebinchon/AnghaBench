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
struct inode {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EXT2_XATTR_INDEX_SECURITY ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,char*,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (struct inode*,struct inode*,char**,void**,size_t*) ; 

int
FUNC3(struct inode *inode, struct inode *dir)
{
	int err;
	size_t len;
	void *value;
	char *name;

	err = FUNC2(inode, dir, &name, &value, &len);
	if (err) {
		if (err == -EOPNOTSUPP)
			return 0;
		return err;
	}
	err = FUNC0(inode, EXT2_XATTR_INDEX_SECURITY,
			     name, value, len, 0);
	FUNC1(name);
	FUNC1(value);
	return err;
}