
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_refcount_tree {int rf_lock; struct super_block* rf_sb; int rf_io_mutex; int rf_ci; } ;


 int mutex_init (int *) ;
 int ocfs2_metadata_cache_init (int *,int *) ;
 int ocfs2_refcount_caching_ops ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline void ocfs2_init_refcount_tree_ci(struct ocfs2_refcount_tree *new,
            struct super_block *sb)
{
 ocfs2_metadata_cache_init(&new->rf_ci, &ocfs2_refcount_caching_ops);
 mutex_init(&new->rf_io_mutex);
 new->rf_sb = sb;
 spin_lock_init(&new->rf_lock);
}
