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
struct pohmelfs_name {int dummy; } ;
struct pohmelfs_inode {int /*<<< orphan*/  ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETFS_REMOVE ; 
 int FUNC0 (struct pohmelfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(struct pohmelfs_inode *pi, struct pohmelfs_name *n)
{
	return FUNC0(pi, pi->ino, NETFS_REMOVE, NULL, 0, NULL, NULL, 0);
}