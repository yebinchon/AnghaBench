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
struct qstr {int dummy; } ;
struct dentry {int /*<<< orphan*/ * d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 

__attribute__((used)) static struct dentry *FUNC4(struct dentry *parent,
					  struct qstr *name)
{
	struct dentry *dentry;

	dentry = FUNC2(parent, name);
	if (FUNC1(dentry))
		return dentry;
	if (dentry->d_inode == NULL)
		return dentry;
	FUNC3(dentry);
	return FUNC0(-EEXIST);
}