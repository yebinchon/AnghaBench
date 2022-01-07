
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dir_lookup_result {int dl_prev_leaf_bh; int dl_dx_leaf_bh; int dl_leaf_bh; int dl_dx_root_bh; } ;


 int brelse (int ) ;

void ocfs2_free_dir_lookup_result(struct ocfs2_dir_lookup_result *res)
{
 brelse(res->dl_dx_root_bh);
 brelse(res->dl_leaf_bh);
 brelse(res->dl_dx_leaf_bh);
 brelse(res->dl_prev_leaf_bh);
}
