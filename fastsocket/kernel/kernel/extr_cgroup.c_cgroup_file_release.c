
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_dentry; } ;
struct cftype {int (* release ) (struct inode*,struct file*) ;} ;


 struct cftype* __d_cft (int ) ;
 int stub1 (struct inode*,struct file*) ;

__attribute__((used)) static int cgroup_file_release(struct inode *inode, struct file *file)
{
 struct cftype *cft = __d_cft(file->f_dentry);
 if (cft->release)
  return cft->release(inode, file);
 return 0;
}
