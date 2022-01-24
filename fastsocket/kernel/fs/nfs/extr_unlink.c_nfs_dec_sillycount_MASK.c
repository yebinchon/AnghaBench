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
struct nfs_inode {int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  silly_count; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct inode *dir)
{
	struct nfs_inode *nfsi = FUNC0(dir);
	if (FUNC1(&nfsi->silly_count) == 1)
		FUNC2(&nfsi->waitqueue);
}