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
struct dentry {int /*<<< orphan*/  d_parent; } ;
struct configfs_item_operations {void* (* show_attribute ) (struct config_item*,struct configfs_attribute*,char*) ;} ;
struct configfs_buffer {char* page; void* count; scalar_t__ needs_read_fill; struct configfs_item_operations* ops; } ;
struct configfs_attribute {int dummy; } ;
struct config_item {int dummy; } ;
typedef  void* ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SIMPLE_ATTR_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct config_item*,struct configfs_attribute*,char*) ; 
 struct configfs_attribute* FUNC3 (struct dentry*) ; 
 struct config_item* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dentry * dentry, struct configfs_buffer * buffer)
{
	struct configfs_attribute * attr = FUNC3(dentry);
	struct config_item * item = FUNC4(dentry->d_parent);
	struct configfs_item_operations * ops = buffer->ops;
	int ret = 0;
	ssize_t count;

	if (!buffer->page)
		buffer->page = (char *) FUNC1(GFP_KERNEL);
	if (!buffer->page)
		return -ENOMEM;

	count = ops->show_attribute(item,attr,buffer->page);
	buffer->needs_read_fill = 0;
	FUNC0(count > (ssize_t)SIMPLE_ATTR_SIZE);
	if (count >= 0)
		buffer->count = count;
	else
		ret = count;
	return ret;
}