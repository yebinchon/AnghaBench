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
struct hfsplus_readdir_data {int /*<<< orphan*/  list; } ;
struct file {struct hfsplus_readdir_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfsplus_readdir_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct hfsplus_readdir_data *rd = file->private_data;
	if (rd) {
		FUNC1(&rd->list);
		FUNC0(rd);
	}
	return 0;
}