
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_file_private {int fp_flock; } ;
struct inode {int i_sb; } ;
struct file {struct ocfs2_file_private* private_data; } ;


 struct ocfs2_super* OCFS2_SB (int ) ;
 int kfree (struct ocfs2_file_private*) ;
 int ocfs2_lock_res_free (int *) ;
 int ocfs2_simple_drop_lockres (struct ocfs2_super*,int *) ;

__attribute__((used)) static void ocfs2_free_file_private(struct inode *inode, struct file *file)
{
 struct ocfs2_file_private *fp = file->private_data;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 if (fp) {
  ocfs2_simple_drop_lockres(osb, &fp->fp_flock);
  ocfs2_lock_res_free(&fp->fp_flock);
  kfree(fp);
  file->private_data = ((void*)0);
 }
}
