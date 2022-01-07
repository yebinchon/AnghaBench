
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_file_private {int fp_flock; int fp_mutex; struct file* fp_file; } ;
struct inode {int dummy; } ;
struct file {struct ocfs2_file_private* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ocfs2_file_private* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int ocfs2_file_lock_res_init (int *,struct ocfs2_file_private*) ;

__attribute__((used)) static int ocfs2_init_file_private(struct inode *inode, struct file *file)
{
 struct ocfs2_file_private *fp;

 fp = kzalloc(sizeof(struct ocfs2_file_private), GFP_KERNEL);
 if (!fp)
  return -ENOMEM;

 fp->fp_file = file;
 mutex_init(&fp->fp_mutex);
 ocfs2_file_lock_res_init(&fp->fp_flock, fp);
 file->private_data = fp;

 return 0;
}
