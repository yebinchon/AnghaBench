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
struct sysfs_dirent {int dummy; } ;
struct inode {int /*<<< orphan*/  i_data; struct sysfs_dirent* i_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct inode *inode)
{
	struct sysfs_dirent *sd  = inode->i_private;

	FUNC2(&inode->i_data, 0);
	FUNC0(inode);
	FUNC1(sd);
}