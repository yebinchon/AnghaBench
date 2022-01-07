
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ocfs2_path {int p_tree_depth; TYPE_2__* p_node; } ;
struct ocfs2_extent_list {TYPE_4__* l_recs; int l_next_free_rec; } ;
struct TYPE_8__ {int e_cpos; int e_blkno; } ;
struct TYPE_7__ {scalar_t__ b_blocknr; } ;
struct TYPE_6__ {TYPE_1__* bh; struct ocfs2_extent_list* el; } ;
struct TYPE_5__ {scalar_t__ b_blocknr; } ;


 int BUG_ON (int) ;
 int EROFS ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int ocfs2_error (struct super_block*,char*,unsigned long long) ;
 scalar_t__ ocfs2_rec_clusters (struct ocfs2_extent_list*,TYPE_4__*) ;
 TYPE_3__* path_leaf_bh (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_find_cpos_for_left_leaf(struct super_block *sb,
      struct ocfs2_path *path, u32 *cpos)
{
 int i, j, ret = 0;
 u64 blkno;
 struct ocfs2_extent_list *el;

 BUG_ON(path->p_tree_depth == 0);

 *cpos = 0;

 blkno = path_leaf_bh(path)->b_blocknr;


 i = path->p_tree_depth - 1;
 while (i >= 0) {
  el = path->p_node[i].el;





  for(j = 0; j < le16_to_cpu(el->l_next_free_rec); j++) {
   if (le64_to_cpu(el->l_recs[j].e_blkno) == blkno) {
    if (j == 0) {
     if (i == 0) {






      goto out;
     }





     goto next_node;
    }

    *cpos = le32_to_cpu(el->l_recs[j - 1].e_cpos);
    *cpos = *cpos + ocfs2_rec_clusters(el,
          &el->l_recs[j - 1]);
    *cpos = *cpos - 1;
    goto out;
   }
  }





  ocfs2_error(sb,
       "Invalid extent tree at extent block %llu\n",
       (unsigned long long)blkno);
  ret = -EROFS;
  goto out;

next_node:
  blkno = path->p_node[i].bh->b_blocknr;
  i--;
 }

out:
 return ret;
}
