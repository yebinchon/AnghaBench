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
struct ext4_ext_path {int /*<<< orphan*/ * p_ext; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ FUNC0 (struct ext4_ext_path*) ; 
 int FUNC1 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC2 (struct inode*,int /*<<< orphan*/ ,struct ext4_ext_path*) ; 
 size_t FUNC3 (struct inode*) ; 

__attribute__((used)) static inline int
FUNC4(struct inode *inode, ext4_lblk_t lblock,
		struct ext4_ext_path **path)
{
	int ret = 0;

	*path = FUNC2(inode, lblock, *path);
	if (FUNC0(*path)) {
		ret = FUNC1(*path);
		*path = NULL;
	} else if ((*path)[FUNC3(inode)].p_ext == NULL)
		ret = -ENODATA;

	return ret;
}