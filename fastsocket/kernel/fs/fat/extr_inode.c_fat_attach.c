
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msdos_sb_info {int inode_hash_lock; struct hlist_head* inode_hashtable; } ;
struct inode {int i_sb; } ;
struct hlist_head {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int i_fat_hash; int i_pos; } ;


 TYPE_1__* MSDOS_I (struct inode*) ;
 struct msdos_sb_info* MSDOS_SB (int ) ;
 int fat_hash (int ) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fat_attach(struct inode *inode, loff_t i_pos)
{
 struct msdos_sb_info *sbi = MSDOS_SB(inode->i_sb);
 struct hlist_head *head = sbi->inode_hashtable + fat_hash(i_pos);

 spin_lock(&sbi->inode_hash_lock);
 MSDOS_I(inode)->i_pos = i_pos;
 hlist_add_head(&MSDOS_I(inode)->i_fat_hash, head);
 spin_unlock(&sbi->inode_hash_lock);
}
