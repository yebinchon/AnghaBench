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
struct qstr {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  MAY_EXEC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct dentry* FUNC2 (struct qstr*,struct dentry*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,struct qstr*,struct dentry*,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct dentry *FUNC6(const char *name, struct dentry *base, int len)
{
	int err;
	struct qstr this;

	FUNC1(!FUNC5(&base->d_inode->i_mutex));

	err = FUNC3(name, &this, base, len);
	if (err)
		return FUNC0(err);

	err = FUNC4(base->d_inode, MAY_EXEC);
	if (err)
		return FUNC0(err);
	return FUNC2(&this, base, NULL);
}