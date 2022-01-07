
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hppfs_inode_info {struct inode vfs_inode; int * proc_dentry; } ;


 int GFP_KERNEL ;
 int inode_init_once (struct inode*) ;
 struct hppfs_inode_info* kmalloc (int,int ) ;

__attribute__((used)) static struct inode *hppfs_alloc_inode(struct super_block *sb)
{
 struct hppfs_inode_info *hi;

 hi = kmalloc(sizeof(*hi), GFP_KERNEL);
 if (!hi)
  return ((void*)0);

 hi->proc_dentry = ((void*)0);
 inode_init_once(&hi->vfs_inode);
 return &hi->vfs_inode;
}
