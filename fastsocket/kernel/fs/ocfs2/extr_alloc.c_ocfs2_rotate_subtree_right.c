
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_path {TYPE_1__* p_node; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {scalar_t__ l_next_free_rec; scalar_t__ l_count; struct ocfs2_extent_rec* l_recs; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
typedef int handle_t ;
struct TYPE_2__ {struct buffer_head* bh; } ;


 int BUG_ON (int) ;
 int EROFS ;
 int le16_add_cpu (scalar_t__*,int) ;
 int le16_to_cpu (scalar_t__) ;
 int memset (struct ocfs2_extent_rec*,int ,int) ;
 int mlog_bug_on_msg (int,char*,unsigned long long,unsigned long long) ;
 int mlog_errno (int) ;
 int ocfs2_complete_edge_insert (int *,struct ocfs2_path*,struct ocfs2_path*,int) ;
 int ocfs2_create_empty_extent (struct ocfs2_extent_list*) ;
 int ocfs2_error (int ,char*,unsigned long long,unsigned long long,int) ;
 scalar_t__ ocfs2_is_empty_extent (struct ocfs2_extent_rec*) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_metadata_cache_get_super (int ) ;
 scalar_t__ ocfs2_metadata_cache_owner (int ) ;
 int ocfs2_path_bh_journal_access (int *,int ,struct ocfs2_path*,int) ;
 int ocfs2_shift_records_right (struct ocfs2_extent_list*) ;
 struct buffer_head* path_leaf_bh (struct ocfs2_path*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;
 int path_num_items (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_rotate_subtree_right(handle_t *handle,
          struct ocfs2_extent_tree *et,
          struct ocfs2_path *left_path,
          struct ocfs2_path *right_path,
          int subtree_index)
{
 int ret, i;
 struct buffer_head *right_leaf_bh;
 struct buffer_head *left_leaf_bh = ((void*)0);
 struct buffer_head *root_bh;
 struct ocfs2_extent_list *right_el, *left_el;
 struct ocfs2_extent_rec move_rec;

 left_leaf_bh = path_leaf_bh(left_path);
 left_el = path_leaf_el(left_path);

 if (left_el->l_next_free_rec != left_el->l_count) {
  ocfs2_error(ocfs2_metadata_cache_get_super(et->et_ci),
       "Inode %llu has non-full interior leaf node %llu"
       "(next free = %u)",
       (unsigned long long)ocfs2_metadata_cache_owner(et->et_ci),
       (unsigned long long)left_leaf_bh->b_blocknr,
       le16_to_cpu(left_el->l_next_free_rec));
  return -EROFS;
 }





 if (ocfs2_is_empty_extent(&left_el->l_recs[0]))
  return 0;

 root_bh = left_path->p_node[subtree_index].bh;
 BUG_ON(root_bh != right_path->p_node[subtree_index].bh);

 ret = ocfs2_path_bh_journal_access(handle, et->et_ci, right_path,
        subtree_index);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 for(i = subtree_index + 1; i < path_num_items(right_path); i++) {
  ret = ocfs2_path_bh_journal_access(handle, et->et_ci,
         right_path, i);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  ret = ocfs2_path_bh_journal_access(handle, et->et_ci,
         left_path, i);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 right_leaf_bh = path_leaf_bh(right_path);
 right_el = path_leaf_el(right_path);


 mlog_bug_on_msg(!right_el->l_next_free_rec, "Inode %llu: Rotate fails "
   "because rightmost leaf block %llu is empty\n",
   (unsigned long long)ocfs2_metadata_cache_owner(et->et_ci),
   (unsigned long long)right_leaf_bh->b_blocknr);

 ocfs2_create_empty_extent(right_el);

 ret = ocfs2_journal_dirty(handle, right_leaf_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }


 i = le16_to_cpu(left_el->l_next_free_rec) - 1;
 move_rec = left_el->l_recs[i];
 right_el->l_recs[0] = move_rec;
 le16_add_cpu(&left_el->l_next_free_rec, -1);
 ocfs2_shift_records_right(left_el);
 memset(&left_el->l_recs[0], 0, sizeof(struct ocfs2_extent_rec));
 le16_add_cpu(&left_el->l_next_free_rec, 1);

 ret = ocfs2_journal_dirty(handle, left_leaf_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ocfs2_complete_edge_insert(handle, left_path, right_path,
       subtree_index);

out:
 return ret;
}
