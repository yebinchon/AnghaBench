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
struct pohmelfs_name {int /*<<< orphan*/  sync_create_entry; } ;
struct pohmelfs_inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pohmelfs_inode*,struct pohmelfs_name*) ; 
 int /*<<< orphan*/  FUNC1 (struct pohmelfs_name*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pohmelfs_inode *parent, struct pohmelfs_name *node)
{
	FUNC0(parent, node);
	FUNC2(&node->sync_create_entry);
	FUNC1(node);
}