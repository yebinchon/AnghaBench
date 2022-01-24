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
struct list_head {int /*<<< orphan*/  next; } ;
struct address_space {int /*<<< orphan*/  private_lock; struct address_space* assoc_mapping; struct list_head private_list; } ;
struct inode {struct address_space i_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct inode *inode)
{
	if (FUNC2(inode)) {
		struct address_space *mapping = &inode->i_data;
		struct list_head *list = &mapping->private_list;
		struct address_space *buffer_mapping = mapping->assoc_mapping;

		FUNC4(&buffer_mapping->private_lock);
		while (!FUNC3(list))
			FUNC1(FUNC0(list->next));
		FUNC5(&buffer_mapping->private_lock);
	}
}