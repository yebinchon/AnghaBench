
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_root {int dummy; } ;
struct TYPE_2__ {struct rb_root ci_tree; } ;
struct ocfs2_caching_info {int ci_flags; unsigned int ci_num_cached; TYPE_1__ ci_cache; int ci_ops; } ;


 int BUG_ON (int) ;
 int ML_ERROR ;
 int OCFS2_CACHE_FL_INLINE ;
 struct rb_root RB_ROOT ;
 int mlog (int ,char*,unsigned long long,...) ;
 int ocfs2_metadata_cache_lock (struct ocfs2_caching_info*) ;
 scalar_t__ ocfs2_metadata_cache_owner (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_reset (struct ocfs2_caching_info*,int ) ;
 int ocfs2_metadata_cache_unlock (struct ocfs2_caching_info*) ;
 unsigned int ocfs2_purge_copied_metadata_tree (struct rb_root*) ;

void ocfs2_metadata_cache_purge(struct ocfs2_caching_info *ci)
{
 unsigned int tree, to_purge, purged;
 struct rb_root root = RB_ROOT;

 BUG_ON(!ci || !ci->ci_ops);

 ocfs2_metadata_cache_lock(ci);
 tree = !(ci->ci_flags & OCFS2_CACHE_FL_INLINE);
 to_purge = ci->ci_num_cached;

 mlog(0, "Purge %u %s items from Owner %llu\n", to_purge,
      tree ? "array" : "tree",
      (unsigned long long)ocfs2_metadata_cache_owner(ci));




 if (tree)
  root = ci->ci_cache.ci_tree;

 ocfs2_metadata_cache_reset(ci, 0);
 ocfs2_metadata_cache_unlock(ci);

 purged = ocfs2_purge_copied_metadata_tree(&root);



 if (tree && purged != to_purge)
  mlog(ML_ERROR, "Owner %llu, count = %u, purged = %u\n",
       (unsigned long long)ocfs2_metadata_cache_owner(ci),
       to_purge, purged);
}
