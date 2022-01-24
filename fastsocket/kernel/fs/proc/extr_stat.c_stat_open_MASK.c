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
struct seq_file {char* buf; unsigned int size; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  show_stat ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	unsigned size = 4096 * (1 + FUNC2() / 32);
	char *buf;
	struct seq_file *m;
	int res;

	/* don't ask for more than the kmalloc() max size, currently 128 KB */
	if (size > 128 * 1024)
		size = 128 * 1024;
	buf = FUNC1(size, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	res = FUNC3(file, show_stat, NULL);
	if (!res) {
		m = file->private_data;
		m->buf = buf;
		m->size = size;
	} else
		FUNC0(buf);
	return res;
}