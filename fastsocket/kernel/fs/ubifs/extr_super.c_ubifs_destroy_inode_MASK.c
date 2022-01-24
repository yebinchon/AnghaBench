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
struct ubifs_inode {int /*<<< orphan*/  data; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct inode*) ; 
 struct ubifs_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  ubifs_inode_slab ; 

__attribute__((used)) static void FUNC3(struct inode *inode)
{
	struct ubifs_inode *ui = FUNC2(inode);

	FUNC0(ui->data);
	FUNC1(ubifs_inode_slab, inode);
}