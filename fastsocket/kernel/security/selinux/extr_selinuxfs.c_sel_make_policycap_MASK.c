#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {unsigned int i_ino; int /*<<< orphan*/ * i_fop; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 unsigned int FUNC0 (char**) ; 
 int ENOMEM ; 
 unsigned int POLICYDB_CAPABILITY_MAX ; 
 unsigned int SEL_POLICYCAP_INO_OFFSET ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC2 (TYPE_1__*,char*) ; 
 TYPE_1__* policycap_dir ; 
 char** policycap_names ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sel_policycap_ops ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(void)
{
	unsigned int iter;
	struct dentry *dentry = NULL;
	struct inode *inode = NULL;

	FUNC4(policycap_dir);

	for (iter = 0; iter <= POLICYDB_CAPABILITY_MAX; iter++) {
		if (iter < FUNC0(policycap_names))
			dentry = FUNC2(policycap_dir,
					      policycap_names[iter]);
		else
			dentry = FUNC2(policycap_dir, "unknown");

		if (dentry == NULL)
			return -ENOMEM;

		inode = FUNC3(policycap_dir->d_sb, S_IFREG | S_IRUGO);
		if (inode == NULL)
			return -ENOMEM;

		inode->i_fop = &sel_policycap_ops;
		inode->i_ino = iter | SEL_POLICYCAP_INO_OFFSET;
		FUNC1(dentry, inode);
	}

	return 0;
}