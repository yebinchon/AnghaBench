
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_meta_cache_item {int c_node; scalar_t__ c_block; } ;
struct TYPE_2__ {int ci_tree; } ;
struct ocfs2_caching_info {int ci_num_cached; TYPE_1__ ci_cache; } ;


 int mlog (int ,char*,unsigned long long) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void ocfs2_remove_metadata_tree(struct ocfs2_caching_info *ci,
           struct ocfs2_meta_cache_item *item)
{
 mlog(0, "remove block %llu from tree\n",
      (unsigned long long) item->c_block);

 rb_erase(&item->c_node, &ci->ci_cache.ci_tree);
 ci->ci_num_cached--;
}
