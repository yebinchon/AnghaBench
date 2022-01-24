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
struct dentry {scalar_t__ d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct dentry * dentry)
{
	if (dentry->d_inode) {
		if (FUNC2(dentry->d_inode)) {
			FUNC1("bad inode, unhashing %s/%s\n",
				 FUNC0(dentry));
			return 1;
		}
	} else {
		/* N.B. Unhash negative dentries? */
	}
	return 0;
}