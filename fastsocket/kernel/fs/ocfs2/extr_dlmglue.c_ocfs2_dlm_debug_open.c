
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct ocfs2_dlm_seq_priv* private; } ;
struct ocfs2_super {int osb_dlm_debug; } ;
struct TYPE_2__ {int l_debug_list; } ;
struct ocfs2_dlm_seq_priv {int p_dlm_debug; TYPE_1__ p_iter_res; } ;
struct inode {struct ocfs2_super* i_private; } ;
struct file {scalar_t__ private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct ocfs2_dlm_seq_priv*) ;
 struct ocfs2_dlm_seq_priv* kzalloc (int,int ) ;
 int mlog_errno (int) ;
 int ocfs2_add_lockres_tracking (TYPE_1__*,int ) ;
 int ocfs2_dlm_seq_ops ;
 int ocfs2_get_dlm_debug (int ) ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int ocfs2_dlm_debug_open(struct inode *inode, struct file *file)
{
 int ret;
 struct ocfs2_dlm_seq_priv *priv;
 struct seq_file *seq;
 struct ocfs2_super *osb;

 priv = kzalloc(sizeof(struct ocfs2_dlm_seq_priv), GFP_KERNEL);
 if (!priv) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }
 osb = inode->i_private;
 ocfs2_get_dlm_debug(osb->osb_dlm_debug);
 priv->p_dlm_debug = osb->osb_dlm_debug;
 INIT_LIST_HEAD(&priv->p_iter_res.l_debug_list);

 ret = seq_open(file, &ocfs2_dlm_seq_ops);
 if (ret) {
  kfree(priv);
  mlog_errno(ret);
  goto out;
 }

 seq = (struct seq_file *) file->private_data;
 seq->private = priv;

 ocfs2_add_lockres_tracking(&priv->p_iter_res,
       priv->p_dlm_debug);

out:
 return ret;
}
