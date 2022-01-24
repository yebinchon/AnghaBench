#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {struct address_space* i_mapping; } ;
struct buffer_head {struct address_space* b_assoc_map; int /*<<< orphan*/  b_assoc_buffers; TYPE_1__* b_page; } ;
struct address_space {int /*<<< orphan*/  private_lock; int /*<<< orphan*/  private_list; struct address_space* assoc_mapping; } ;
struct TYPE_2__ {struct address_space* mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct buffer_head *bh, struct inode *inode)
{
	struct address_space *mapping = inode->i_mapping;
	struct address_space *buffer_mapping = bh->b_page->mapping;

	FUNC2(bh);
	if (!mapping->assoc_mapping) {
		mapping->assoc_mapping = buffer_mapping;
	} else {
		FUNC0(mapping->assoc_mapping != buffer_mapping);
	}
	if (!bh->b_assoc_map) {
		FUNC3(&buffer_mapping->private_lock);
		FUNC1(&bh->b_assoc_buffers,
				&mapping->private_list);
		bh->b_assoc_map = mapping;
		FUNC4(&buffer_mapping->private_lock);
	}
}