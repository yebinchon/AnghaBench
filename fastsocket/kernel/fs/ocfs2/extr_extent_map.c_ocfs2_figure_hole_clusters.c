
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_extent_list {TYPE_1__* l_recs; int l_next_free_rec; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; int h_next_leaf_blk; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int e_cpos; } ;


 scalar_t__ UINT_MAX ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 unsigned long long le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_read_extent_block (struct ocfs2_caching_info*,unsigned long long,struct buffer_head**) ;
 int ocfs2_search_for_hole_index (struct ocfs2_extent_list*,scalar_t__) ;

int ocfs2_figure_hole_clusters(struct ocfs2_caching_info *ci,
          struct ocfs2_extent_list *el,
          struct buffer_head *eb_bh,
          u32 v_cluster,
          u32 *num_clusters)
{
 int ret, i;
 struct buffer_head *next_eb_bh = ((void*)0);
 struct ocfs2_extent_block *eb, *next_eb;

 i = ocfs2_search_for_hole_index(el, v_cluster);

 if (i == le16_to_cpu(el->l_next_free_rec) && eb_bh) {
  eb = (struct ocfs2_extent_block *)eb_bh->b_data;





  if (le64_to_cpu(eb->h_next_leaf_blk) == 0ULL)
   goto no_more_extents;

  ret = ocfs2_read_extent_block(ci,
           le64_to_cpu(eb->h_next_leaf_blk),
           &next_eb_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  next_eb = (struct ocfs2_extent_block *)next_eb_bh->b_data;
  el = &next_eb->h_list;
  i = ocfs2_search_for_hole_index(el, v_cluster);
 }

no_more_extents:
 if (i == le16_to_cpu(el->l_next_free_rec)) {





  *num_clusters = UINT_MAX - v_cluster;
 } else {
  *num_clusters = le32_to_cpu(el->l_recs[i].e_cpos) - v_cluster;
 }

 ret = 0;
out:
 brelse(next_eb_bh);
 return ret;
}
