#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_generation; int /*<<< orphan*/  i_sb; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef  int /*<<< orphan*/  namebuf ;
struct TYPE_4__ {int /*<<< orphan*/  k_objectid; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int ENODATA ; 
 struct dentry* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct inode const*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_XATTR ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (char*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct dentry* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (TYPE_1__*,struct dentry*,int) ; 

__attribute__((used)) static struct dentry *FUNC13(const struct inode *inode, int flags)
{
	struct dentry *xaroot, *xadir;
	char namebuf[17];

	xaroot = FUNC8(inode->i_sb, flags);
	if (FUNC2(xaroot))
		return xaroot;

	FUNC9(namebuf, sizeof(namebuf), "%X.%X",
		 FUNC4(FUNC1(inode)->k_objectid),
		 inode->i_generation);

	FUNC6(&xaroot->d_inode->i_mutex, I_MUTEX_XATTR);

	xadir = FUNC5(namebuf, xaroot, FUNC10(namebuf));
	if (!FUNC2(xadir) && !xadir->d_inode) {
		int err = -ENODATA;
		if (FUNC11(flags))
			err = FUNC12(xaroot->d_inode, xadir, 0700);
		if (err) {
			FUNC3(xadir);
			xadir = FUNC0(err);
		}
	}

	FUNC7(&xaroot->d_inode->i_mutex);
	FUNC3(xaroot);
	return xadir;
}