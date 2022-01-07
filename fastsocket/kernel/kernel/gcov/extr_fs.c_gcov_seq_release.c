
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct gcov_iterator* private; } ;
struct inode {int dummy; } ;
struct gcov_iterator {int dummy; } ;
struct gcov_info {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int gcov_info_free (struct gcov_info*) ;
 int gcov_iter_free (struct gcov_iterator*) ;
 struct gcov_info* gcov_iter_get_info (struct gcov_iterator*) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int gcov_seq_release(struct inode *inode, struct file *file)
{
 struct gcov_iterator *iter;
 struct gcov_info *info;
 struct seq_file *seq;

 seq = file->private_data;
 iter = seq->private;
 info = gcov_iter_get_info(iter);
 gcov_iter_free(iter);
 gcov_info_free(info);
 seq_release(inode, file);

 return 0;
}
