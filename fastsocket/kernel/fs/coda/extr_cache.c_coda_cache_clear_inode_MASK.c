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
struct coda_inode_info {scalar_t__ c_cached_epoch; } ;

/* Variables and functions */
 struct coda_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  permission_epoch ; 

void FUNC2(struct inode *inode)
{
	struct coda_inode_info *cii = FUNC0(inode);
	cii->c_cached_epoch = FUNC1(&permission_epoch) - 1;
}