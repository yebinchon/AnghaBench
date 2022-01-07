
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l_count; scalar_t__ l_next_free_rec; scalar_t__ l_tree_depth; } ;
struct TYPE_4__ {TYPE_1__ i_list; } ;
struct ocfs2_dinode {TYPE_2__ id2; } ;
struct inode {int i_sb; } ;


 int cpu_to_le16 (int ) ;
 int ocfs2_extent_recs_per_inode_with_xattr (int ,struct ocfs2_dinode*) ;
 int ocfs2_zero_dinode_id2_with_xattr (struct inode*,struct ocfs2_dinode*) ;

void ocfs2_dinode_new_extent_list(struct inode *inode,
      struct ocfs2_dinode *di)
{
 ocfs2_zero_dinode_id2_with_xattr(inode, di);
 di->id2.i_list.l_tree_depth = 0;
 di->id2.i_list.l_next_free_rec = 0;
 di->id2.i_list.l_count = cpu_to_le16(
  ocfs2_extent_recs_per_inode_with_xattr(inode->i_sb, di));
}
