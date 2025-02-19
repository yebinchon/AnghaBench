
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_path {int p_tree_depth; } ;
struct ocfs2_extent_rec {int e_leaf_clusters; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int l_next_free_rec; } ;
struct ocfs2_extent_block {int h_blkno; struct ocfs2_extent_list h_list; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {unsigned int ip_clusters; } ;


 int BUG_ON (int) ;
 int INODE_CACHE (struct inode*) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_IS_VALID_EXTENT_BLOCK (struct ocfs2_extent_block*) ;
 int brelse (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long,int ) ;
 int mlog_errno (int) ;
 int ocfs2_find_cpos_for_left_leaf (int ,struct ocfs2_path*,int *) ;
 int ocfs2_find_leaf (int ,int ,int ,struct buffer_head**) ;
 scalar_t__ ocfs2_is_empty_extent (struct ocfs2_extent_rec*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;
 int path_root_el (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_find_new_last_ext_blk(struct inode *inode,
           unsigned int clusters_to_del,
           struct ocfs2_path *path,
           struct buffer_head **new_last_eb)
{
 int next_free, ret = 0;
 u32 cpos;
 struct ocfs2_extent_rec *rec;
 struct ocfs2_extent_block *eb;
 struct ocfs2_extent_list *el;
 struct buffer_head *bh = ((void*)0);

 *new_last_eb = ((void*)0);


 if (!path->p_tree_depth)
  goto out;



 if (OCFS2_I(inode)->ip_clusters == clusters_to_del)
  goto out;

 el = path_leaf_el(path);
 BUG_ON(!el->l_next_free_rec);
 next_free = le16_to_cpu(el->l_next_free_rec);
 rec = ((void*)0);
 if (ocfs2_is_empty_extent(&el->l_recs[0])) {
  if (next_free > 2)
   goto out;


  if (next_free == 2)
   rec = &el->l_recs[1];





 } else {
  if (next_free > 1)
   goto out;

  rec = &el->l_recs[0];
 }

 if (rec) {




  if (le16_to_cpu(rec->e_leaf_clusters) > clusters_to_del)
   goto out;
 }

 ret = ocfs2_find_cpos_for_left_leaf(inode->i_sb, path, &cpos);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_find_leaf(INODE_CACHE(inode), path_root_el(path), cpos, &bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 eb = (struct ocfs2_extent_block *) bh->b_data;
 el = &eb->h_list;



 BUG_ON(!OCFS2_IS_VALID_EXTENT_BLOCK(eb));

 *new_last_eb = bh;
 get_bh(*new_last_eb);
 mlog(0, "returning block %llu, (cpos: %u)\n",
      (unsigned long long)le64_to_cpu(eb->h_blkno), cpos);
out:
 brelse(bh);

 return ret;
}
