
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hpfs_inode_info {int ** i_rddir_off; } ;
typedef int loff_t ;


 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 void stub1 (int *,int ,int ) ;

__attribute__((used)) static void for_all_poss(struct inode *inode, void (*f)(loff_t *, loff_t, loff_t),
    loff_t p1, loff_t p2)
{
 struct hpfs_inode_info *hpfs_inode = hpfs_i(inode);
 loff_t **i;

 if (!hpfs_inode->i_rddir_off) return;
 for (i = hpfs_inode->i_rddir_off; *i; i++) (*f)(*i, p1, p2);
 return;
}
