
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_path {int dummy; } ;
struct ocfs2_insert_type {scalar_t__ ins_contig; scalar_t__ ins_contig_index; void* ins_tree_depth; int ins_split; } ;
struct ocfs2_extent_tree {int et_ci; struct ocfs2_extent_list* et_root_el; } ;
struct ocfs2_extent_rec {int e_cpos; } ;
struct ocfs2_extent_list {scalar_t__ l_next_free_rec; scalar_t__ l_count; scalar_t__ l_tree_depth; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {scalar_t__ b_blocknr; } ;


 scalar_t__ CONTIG_LEFT ;
 scalar_t__ CONTIG_NONE ;
 int ENOMEM ;
 int SPLIT_NONE ;
 int brelse (struct buffer_head*) ;
 void* le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 scalar_t__ ocfs2_et_get_last_eb_blk (struct ocfs2_extent_tree*) ;
 int ocfs2_figure_appending_type (struct ocfs2_insert_type*,struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ;
 int ocfs2_figure_contig_type (struct ocfs2_extent_tree*,struct ocfs2_insert_type*,struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ;
 int ocfs2_find_path (int ,struct ocfs2_path*,int ) ;
 int ocfs2_free_path (struct ocfs2_path*) ;
 struct ocfs2_path* ocfs2_new_path_from_et (struct ocfs2_extent_tree*) ;
 int ocfs2_read_extent_block (int ,scalar_t__,struct buffer_head**) ;
 TYPE_1__* path_leaf_bh (struct ocfs2_path*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_figure_insert_type(struct ocfs2_extent_tree *et,
        struct buffer_head **last_eb_bh,
        struct ocfs2_extent_rec *insert_rec,
        int *free_records,
        struct ocfs2_insert_type *insert)
{
 int ret;
 struct ocfs2_extent_block *eb;
 struct ocfs2_extent_list *el;
 struct ocfs2_path *path = ((void*)0);
 struct buffer_head *bh = ((void*)0);

 insert->ins_split = SPLIT_NONE;

 el = et->et_root_el;
 insert->ins_tree_depth = le16_to_cpu(el->l_tree_depth);

 if (el->l_tree_depth) {






  ret = ocfs2_read_extent_block(et->et_ci,
           ocfs2_et_get_last_eb_blk(et),
           &bh);
  if (ret) {
   mlog_exit(ret);
   goto out;
  }
  eb = (struct ocfs2_extent_block *) bh->b_data;
  el = &eb->h_list;
 }
 *free_records = le16_to_cpu(el->l_count) -
  le16_to_cpu(el->l_next_free_rec);

 if (!insert->ins_tree_depth) {
  ocfs2_figure_contig_type(et, insert, el, insert_rec);
  ocfs2_figure_appending_type(insert, el, insert_rec);
  return 0;
 }

 path = ocfs2_new_path_from_et(et);
 if (!path) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }







 ret = ocfs2_find_path(et->et_ci, path, le32_to_cpu(insert_rec->e_cpos));
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 el = path_leaf_el(path);
 ocfs2_figure_contig_type(et, insert, el, insert_rec);
 if (insert->ins_contig == CONTIG_LEFT &&
     insert->ins_contig_index == 0)
  insert->ins_contig = CONTIG_NONE;







 if (ocfs2_et_get_last_eb_blk(et) ==
     path_leaf_bh(path)->b_blocknr) {
  ocfs2_figure_appending_type(insert, el, insert_rec);
 }

out:
 ocfs2_free_path(path);

 if (ret == 0)
  *last_eb_bh = bh;
 else
  brelse(bh);
 return ret;
}
