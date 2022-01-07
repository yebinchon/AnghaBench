
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_generation; int i_ino; } ;
struct dentry {int d_lock; TYPE_1__* d_parent; struct inode* d_inode; } ;
typedef int __u32 ;
struct TYPE_4__ {int k_dir_id; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 TYPE_2__* INODE_PKEY (struct inode*) ;
 int le32_to_cpu (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int reiserfs_encode_fh(struct dentry *dentry, __u32 * data, int *lenp,
         int need_parent)
{
 struct inode *inode = dentry->d_inode;
 int maxlen = *lenp;

 if (maxlen < 3)
  return 255;

 data[0] = inode->i_ino;
 data[1] = le32_to_cpu(INODE_PKEY(inode)->k_dir_id);
 data[2] = inode->i_generation;
 *lenp = 3;

 if (maxlen < 5 || !need_parent)
  return 3;

 spin_lock(&dentry->d_lock);
 inode = dentry->d_parent->d_inode;
 data[3] = inode->i_ino;
 data[4] = le32_to_cpu(INODE_PKEY(inode)->k_dir_id);
 *lenp = 5;
 if (maxlen >= 6) {
  data[5] = inode->i_generation;
  *lenp = 6;
 }
 spin_unlock(&dentry->d_lock);
 return *lenp;
}
