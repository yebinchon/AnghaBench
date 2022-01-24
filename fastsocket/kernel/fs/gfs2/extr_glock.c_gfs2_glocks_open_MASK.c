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
struct seq_file {int /*<<< orphan*/  size; scalar_t__ buf; struct gfs2_glock_iter* private; } ;
struct inode {int /*<<< orphan*/  i_private; } ;
struct gfs2_glock_iter {int /*<<< orphan*/  sdp; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int /*<<< orphan*/  GFS2_SEQ_GOODSIZE ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  gfs2_glock_seq_ops ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	int ret = FUNC1(file, &gfs2_glock_seq_ops,
				   sizeof(struct gfs2_glock_iter));
	if (ret == 0) {
		struct seq_file *seq = file->private_data;
		struct gfs2_glock_iter *gi = seq->private;
		gi->sdp = inode->i_private;
		seq->buf = FUNC0(GFS2_SEQ_GOODSIZE, GFP_KERNEL | __GFP_NOWARN);
		if (seq->buf)
			seq->size = GFS2_SEQ_GOODSIZE;
	}
	return ret;
}