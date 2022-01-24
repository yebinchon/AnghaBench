#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct module {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {TYPE_2__* dentry; } ;
struct file {struct configfs_buffer* private_data; TYPE_1__ f_path; } ;
struct configfs_buffer {int /*<<< orphan*/  mutex; scalar_t__ page; } ;
struct configfs_attribute {struct module* ca_owner; } ;
struct config_item {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct configfs_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct module*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct configfs_attribute* FUNC5 (TYPE_2__*) ; 
 struct config_item* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode * inode, struct file * filp)
{
	struct config_item * item = FUNC6(filp->f_path.dentry->d_parent);
	struct configfs_attribute * attr = FUNC5(filp->f_path.dentry);
	struct module * owner = attr->ca_owner;
	struct configfs_buffer * buffer = filp->private_data;

	if (item)
		FUNC0(item);
	/* After this point, attr should not be accessed. */
	FUNC3(owner);

	if (buffer) {
		if (buffer->page)
			FUNC1((unsigned long)buffer->page);
		FUNC4(&buffer->mutex);
		FUNC2(buffer);
	}
	return 0;
}