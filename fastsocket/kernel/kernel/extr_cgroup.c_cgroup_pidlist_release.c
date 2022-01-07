
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct cgroup_pidlist* private; } ;
struct inode {int dummy; } ;
struct file {int f_mode; scalar_t__ private_data; } ;
struct cgroup_pidlist {int dummy; } ;


 int FMODE_READ ;
 int cgroup_release_pid_array (struct cgroup_pidlist*) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int cgroup_pidlist_release(struct inode *inode, struct file *file)
{
 struct cgroup_pidlist *l;
 if (!(file->f_mode & FMODE_READ))
  return 0;




 l = ((struct seq_file *)file->private_data)->private;
 cgroup_release_pid_array(l);
 return seq_release(inode, file);
}
