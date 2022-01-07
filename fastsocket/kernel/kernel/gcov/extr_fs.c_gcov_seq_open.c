
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct gcov_iterator* private; } ;
struct inode {struct gcov_node* i_private; } ;
struct gcov_node {int dummy; } ;
struct gcov_iterator {int dummy; } ;
struct gcov_info {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int ENOMEM ;
 struct gcov_info* gcov_info_dup (int ) ;
 int gcov_info_free (struct gcov_info*) ;
 int gcov_iter_free (struct gcov_iterator*) ;
 struct gcov_iterator* gcov_iter_new (struct gcov_info*) ;
 int gcov_seq_ops ;
 int get_node_info (struct gcov_node*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int node_lock ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int gcov_seq_open(struct inode *inode, struct file *file)
{
 struct gcov_node *node = inode->i_private;
 struct gcov_iterator *iter;
 struct seq_file *seq;
 struct gcov_info *info;
 int rc = -ENOMEM;

 mutex_lock(&node_lock);




 info = gcov_info_dup(get_node_info(node));
 if (!info)
  goto out_unlock;
 iter = gcov_iter_new(info);
 if (!iter)
  goto err_free_info;
 rc = seq_open(file, &gcov_seq_ops);
 if (rc)
  goto err_free_iter_info;
 seq = file->private_data;
 seq->private = iter;
out_unlock:
 mutex_unlock(&node_lock);
 return rc;

err_free_iter_info:
 gcov_iter_free(iter);
err_free_info:
 gcov_info_free(info);
 goto out_unlock;
}
