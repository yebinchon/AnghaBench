
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_sb {int ino_lock; } ;
struct pohmelfs_inode {int inode_entry; } ;
struct inode {int i_sb; } ;


 struct pohmelfs_inode* POHMELFS_I (struct inode*) ;
 struct pohmelfs_sb* POHMELFS_SB (int ) ;
 int generic_drop_inode (struct inode*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pohmelfs_drop_inode(struct inode *inode)
{
 struct pohmelfs_sb *psb = POHMELFS_SB(inode->i_sb);
 struct pohmelfs_inode *pi = POHMELFS_I(inode);

 spin_lock(&psb->ino_lock);
 list_del_init(&pi->inode_entry);
 spin_unlock(&psb->ino_lock);

 generic_drop_inode(inode);
}
