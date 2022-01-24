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
struct vxfs_inode_info {int vii_mode; } ;
typedef  int mode_t ;

/* Variables and functions */
 int S_IFBLK ; 
 int S_IFCHR ; 
 int S_IFDIR ; 
 int S_IFIFO ; 
 int S_IFLNK ; 
 int S_IFREG ; 
 int S_IFSOCK ; 
 scalar_t__ FUNC0 (struct vxfs_inode_info*) ; 
 scalar_t__ FUNC1 (struct vxfs_inode_info*) ; 
 scalar_t__ FUNC2 (struct vxfs_inode_info*) ; 
 scalar_t__ FUNC3 (struct vxfs_inode_info*) ; 
 scalar_t__ FUNC4 (struct vxfs_inode_info*) ; 
 scalar_t__ FUNC5 (struct vxfs_inode_info*) ; 
 scalar_t__ FUNC6 (struct vxfs_inode_info*) ; 
 int VXFS_TYPE_MASK ; 

__attribute__((used)) static __inline__ mode_t
FUNC7(struct vxfs_inode_info *vip)
{
	mode_t			ret = vip->vii_mode & ~VXFS_TYPE_MASK;

	if (FUNC3(vip))
		ret |= S_IFIFO;
	if (FUNC1(vip))
		ret |= S_IFCHR;
	if (FUNC2(vip))
		ret |= S_IFDIR;
	if (FUNC0(vip))
		ret |= S_IFBLK;
	if (FUNC4(vip))
		ret |= S_IFLNK;
	if (FUNC5(vip))
		ret |= S_IFREG;
	if (FUNC6(vip))
		ret |= S_IFSOCK;

	return (ret);
}