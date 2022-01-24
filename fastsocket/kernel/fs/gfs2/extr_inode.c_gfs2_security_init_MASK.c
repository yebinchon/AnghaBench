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
struct gfs2_inode {int /*<<< orphan*/  i_inode; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFS2_EATYPE_SECURITY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,void**,size_t*) ; 

__attribute__((used)) static int FUNC3(struct gfs2_inode *dip, struct gfs2_inode *ip)
{
	int err;
	size_t len;
	void *value;
	char *name;

	err = FUNC2(&ip->i_inode, &dip->i_inode,
					   &name, &value, &len);

	if (err) {
		if (err == -EOPNOTSUPP)
			return 0;
		return err;
	}

	err = FUNC0(&ip->i_inode, GFS2_EATYPE_SECURITY, name, value, len, 0);
	FUNC1(value);
	FUNC1(name);

	return err;
}