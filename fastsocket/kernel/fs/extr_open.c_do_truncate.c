
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iattr {unsigned int ia_valid; struct file* ia_file; scalar_t__ ia_size; } ;
struct file {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int i_mutex; } ;


 unsigned int ATTR_FILE ;
 int ATTR_FORCE ;
 unsigned int ATTR_SIZE ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notify_change (struct dentry*,struct iattr*) ;
 int should_remove_suid (struct dentry*) ;

int do_truncate(struct dentry *dentry, loff_t length, unsigned int time_attrs,
 struct file *filp)
{
 int ret;
 struct iattr newattrs;


 if (length < 0)
  return -EINVAL;

 newattrs.ia_size = length;
 newattrs.ia_valid = ATTR_SIZE | time_attrs;
 if (filp) {
  newattrs.ia_file = filp;
  newattrs.ia_valid |= ATTR_FILE;
 }


 ret = should_remove_suid(dentry);
 if (ret)
  newattrs.ia_valid |= ret | ATTR_FORCE;

 mutex_lock(&dentry->d_inode->i_mutex);
 ret = notify_change(dentry, &newattrs);
 mutex_unlock(&dentry->d_inode->i_mutex);
 return ret;
}
