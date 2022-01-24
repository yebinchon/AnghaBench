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
struct seq_operations {int dummy; } ;
struct seq_file {struct proc_maps_private* private; } ;
struct proc_maps_private {int /*<<< orphan*/  pid; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct proc_maps_private*) ; 
 struct proc_maps_private* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct file*,struct seq_operations const*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file,
			const struct seq_operations *ops)
{
	struct proc_maps_private *priv;
	int ret = -ENOMEM;
	priv = FUNC1(sizeof(*priv), GFP_KERNEL);
	if (priv) {
		priv->pid = FUNC2(inode);
		ret = FUNC3(file, ops);
		if (!ret) {
			struct seq_file *m = file->private_data;
			m->private = priv;
		} else {
			FUNC0(priv);
		}
	}
	return ret;
}