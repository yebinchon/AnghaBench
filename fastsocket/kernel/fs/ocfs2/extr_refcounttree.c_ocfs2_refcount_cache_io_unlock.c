
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_refcount_tree {int rf_io_mutex; } ;
struct ocfs2_caching_info {int dummy; } ;


 struct ocfs2_refcount_tree* cache_info_to_refcount (struct ocfs2_caching_info*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ocfs2_refcount_cache_io_unlock(struct ocfs2_caching_info *ci)
{
 struct ocfs2_refcount_tree *rf = cache_info_to_refcount(ci);

 mutex_unlock(&rf->rf_io_mutex);
}
