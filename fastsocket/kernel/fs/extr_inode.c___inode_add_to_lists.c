
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_inodes; } ;
struct inode {int i_hash; int i_sb_list; int i_list; } ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {int nr_inodes; } ;


 int hlist_add_head (int *,struct hlist_head*) ;
 int inode_in_use ;
 TYPE_1__ inodes_stat ;
 int list_add (int *,int *) ;

__attribute__((used)) static inline void
__inode_add_to_lists(struct super_block *sb, struct hlist_head *head,
   struct inode *inode)
{
 inodes_stat.nr_inodes++;
 list_add(&inode->i_list, &inode_in_use);
 list_add(&inode->i_sb_list, &sb->s_inodes);
 if (head)
  hlist_add_head(&inode->i_hash, head);
}
