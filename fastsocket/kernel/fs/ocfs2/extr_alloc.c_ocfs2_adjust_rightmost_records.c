
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_path {int p_tree_depth; TYPE_1__* p_node; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_rec {int e_cpos; int e_int_clusters; int e_leaf_clusters; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int l_next_free_rec; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {struct ocfs2_extent_list* el; struct buffer_head* bh; } ;


 int EIO ;
 int le16_to_cpu (int ) ;
 int le32_add_cpu (int *,int) ;
 int le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_error (int ,char*,unsigned long long) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_metadata_cache_get_super (int ) ;
 scalar_t__ ocfs2_metadata_cache_owner (int ) ;

__attribute__((used)) static void ocfs2_adjust_rightmost_records(handle_t *handle,
        struct ocfs2_extent_tree *et,
        struct ocfs2_path *path,
        struct ocfs2_extent_rec *insert_rec)
{
 int ret, i, next_free;
 struct buffer_head *bh;
 struct ocfs2_extent_list *el;
 struct ocfs2_extent_rec *rec;




 for (i = 0; i < path->p_tree_depth; i++) {
  bh = path->p_node[i].bh;
  el = path->p_node[i].el;

  next_free = le16_to_cpu(el->l_next_free_rec);
  if (next_free == 0) {
   ocfs2_error(ocfs2_metadata_cache_get_super(et->et_ci),
        "Owner %llu has a bad extent list",
        (unsigned long long)ocfs2_metadata_cache_owner(et->et_ci));
   ret = -EIO;
   return;
  }

  rec = &el->l_recs[next_free - 1];

  rec->e_int_clusters = insert_rec->e_cpos;
  le32_add_cpu(&rec->e_int_clusters,
        le16_to_cpu(insert_rec->e_leaf_clusters));
  le32_add_cpu(&rec->e_int_clusters,
        -le32_to_cpu(rec->e_cpos));

  ret = ocfs2_journal_dirty(handle, bh);
  if (ret)
   mlog_errno(ret);

 }
}
