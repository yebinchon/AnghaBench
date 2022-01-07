
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inode {int i_lock; } ;
struct TYPE_12__ {TYPE_4__* dentry; } ;
struct file {TYPE_2__* f_mapping; TYPE_6__ f_path; } ;
typedef int loff_t ;
struct TYPE_9__ {int name; } ;
struct TYPE_11__ {TYPE_3__ d_name; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_10__ {TYPE_1__ d_name; TYPE_5__* d_parent; } ;
struct TYPE_8__ {struct inode* host; } ;


 int SEEK_END ;
 int dprintk (char*,int ,int ,int ,int) ;
 int generic_file_llseek_unlocked (struct file*,int ,int) ;
 int nfs_revalidate_file_size (struct inode*,struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static loff_t nfs_file_llseek(struct file *filp, loff_t offset, int origin)
{
 loff_t loff;

 dprintk("NFS: llseek file(%s/%s, %lld, %d)\n",
   filp->f_path.dentry->d_parent->d_name.name,
   filp->f_path.dentry->d_name.name,
   offset, origin);


 if (origin == SEEK_END) {
  struct inode *inode = filp->f_mapping->host;

  int retval = nfs_revalidate_file_size(inode, filp);
  if (retval < 0)
   return (loff_t)retval;

  spin_lock(&inode->i_lock);
  loff = generic_file_llseek_unlocked(filp, offset, origin);
  spin_unlock(&inode->i_lock);
 } else
  loff = generic_file_llseek_unlocked(filp, offset, origin);
 return loff;
}
