
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dev_str; } ;
struct TYPE_2__ {int i_sb; } ;
struct ocfs2_inode_info {int ip_dyn_features; scalar_t__ ip_clusters; scalar_t__ ip_blkno; TYPE_1__ vfs_inode; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_rec {int e_cpos; } ;


 int BUG_ON (int) ;
 int OCFS2_INLINE_DATA_FL ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 struct ocfs2_inode_info* cache_info_to_inode (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mlog_bug_on_msg (int,char*,int ,unsigned long long,int ,scalar_t__) ;
 int ocfs2_sparse_alloc (struct ocfs2_super*) ;

__attribute__((used)) static int ocfs2_dinode_insert_check(struct ocfs2_extent_tree *et,
         struct ocfs2_extent_rec *rec)
{
 struct ocfs2_inode_info *oi = cache_info_to_inode(et->et_ci);
 struct ocfs2_super *osb = OCFS2_SB(oi->vfs_inode.i_sb);

 BUG_ON(oi->ip_dyn_features & OCFS2_INLINE_DATA_FL);
 mlog_bug_on_msg(!ocfs2_sparse_alloc(osb) &&
   (oi->ip_clusters != le32_to_cpu(rec->e_cpos)),
   "Device %s, asking for sparse allocation: inode %llu, "
   "cpos %u, clusters %u\n",
   osb->dev_str,
   (unsigned long long)oi->ip_blkno,
   rec->e_cpos, oi->ip_clusters);

 return 0;
}
