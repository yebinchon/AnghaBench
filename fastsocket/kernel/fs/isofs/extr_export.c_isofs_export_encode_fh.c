
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iso_inode_info {scalar_t__ i_iget5_offset; int i_iget5_block; } ;
struct inode {int i_generation; int i_mode; } ;
struct dentry {int d_lock; TYPE_1__* d_parent; struct inode* d_inode; } ;
typedef int __u32 ;
typedef scalar_t__ __u16 ;
struct TYPE_2__ {struct inode* d_inode; } ;


 struct iso_inode_info* ISOFS_I (struct inode*) ;
 int S_ISDIR (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
isofs_export_encode_fh(struct dentry *dentry,
         __u32 *fh32,
         int *max_len,
         int connectable)
{
 struct inode * inode = dentry->d_inode;
 struct iso_inode_info * ei = ISOFS_I(inode);
 int len = *max_len;
 int type = 1;
 __u16 *fh16 = (__u16*)fh32;
 if (len < 3 || (connectable && len < 5))
  return 255;

 len = 3;
 fh32[0] = ei->i_iget5_block;
  fh16[2] = (__u16)ei->i_iget5_offset;
 fh32[2] = inode->i_generation;
 if (connectable && !S_ISDIR(inode->i_mode)) {
  struct inode *parent;
  struct iso_inode_info *eparent;
  spin_lock(&dentry->d_lock);
  parent = dentry->d_parent->d_inode;
  eparent = ISOFS_I(parent);
  fh32[3] = eparent->i_iget5_block;
  fh16[3] = (__u16)eparent->i_iget5_offset;
  fh32[4] = parent->i_generation;
  spin_unlock(&dentry->d_lock);
  len = 5;
  type = 2;
 }
 *max_len = len;
 return type;
}
