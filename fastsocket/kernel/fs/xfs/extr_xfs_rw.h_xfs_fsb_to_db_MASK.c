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
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_daddr_t ;
struct xfs_inode {int /*<<< orphan*/  i_mount; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct xfs_inode*) ; 

__attribute__((used)) static inline xfs_daddr_t
FUNC3(struct xfs_inode *ip, xfs_fsblock_t fsb)
{
	return (FUNC2(ip) ? \
		 (xfs_daddr_t)FUNC0((ip)->i_mount, (fsb)) : \
		 FUNC1((ip)->i_mount, (fsb)));
}