
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_extent_list {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 int __ocfs2_find_path (struct ocfs2_caching_info*,struct ocfs2_extent_list*,int ,int ,struct buffer_head**) ;
 int find_leaf_ins ;
 int mlog_errno (int) ;

int ocfs2_find_leaf(struct ocfs2_caching_info *ci,
      struct ocfs2_extent_list *root_el, u32 cpos,
      struct buffer_head **leaf_bh)
{
 int ret;
 struct buffer_head *bh = ((void*)0);

 ret = __ocfs2_find_path(ci, root_el, cpos, find_leaf_ins, &bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 *leaf_bh = bh;
out:
 return ret;
}
