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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct page* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct page* FUNC0 () ; 

__attribute__((used)) static int FUNC1(struct inode *inode, struct file *filp)
{
	struct page    *status = FUNC0();

	if (!status)
		return -ENOMEM;

	filp->private_data = status;

	return 0;
}