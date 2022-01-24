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
struct seq_file {struct ocfs2_dlm_seq_priv* private; } ;
struct ocfs2_super {int /*<<< orphan*/  osb_dlm_debug; } ;
struct TYPE_2__ {int /*<<< orphan*/  l_debug_list; } ;
struct ocfs2_dlm_seq_priv {int /*<<< orphan*/  p_dlm_debug; TYPE_1__ p_iter_res; } ;
struct inode {struct ocfs2_super* i_private; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_dlm_seq_priv*) ; 
 struct ocfs2_dlm_seq_priv* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_dlm_seq_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	int ret;
	struct ocfs2_dlm_seq_priv *priv;
	struct seq_file *seq;
	struct ocfs2_super *osb;

	priv = FUNC2(sizeof(struct ocfs2_dlm_seq_priv), GFP_KERNEL);
	if (!priv) {
		ret = -ENOMEM;
		FUNC3(ret);
		goto out;
	}
	osb = inode->i_private;
	FUNC5(osb->osb_dlm_debug);
	priv->p_dlm_debug = osb->osb_dlm_debug;
	FUNC0(&priv->p_iter_res.l_debug_list);

	ret = FUNC6(file, &ocfs2_dlm_seq_ops);
	if (ret) {
		FUNC1(priv);
		FUNC3(ret);
		goto out;
	}

	seq = (struct seq_file *) file->private_data;
	seq->private = priv;

	FUNC4(&priv->p_iter_res,
				   priv->p_dlm_debug);

out:
	return ret;
}