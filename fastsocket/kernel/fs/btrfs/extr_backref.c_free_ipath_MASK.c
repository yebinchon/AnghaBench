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
struct inode_fs_paths {struct inode_fs_paths* fspath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode_fs_paths*) ; 

void FUNC1(struct inode_fs_paths *ipath)
{
	if (!ipath)
		return;
	FUNC0(ipath->fspath);
	FUNC0(ipath);
}