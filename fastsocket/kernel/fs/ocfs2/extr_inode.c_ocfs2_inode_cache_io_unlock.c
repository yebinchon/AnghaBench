
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_inode_info {int ip_io_mutex; } ;
struct ocfs2_caching_info {int dummy; } ;


 struct ocfs2_inode_info* cache_info_to_inode (struct ocfs2_caching_info*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ocfs2_inode_cache_io_unlock(struct ocfs2_caching_info *ci)
{
 struct ocfs2_inode_info *oi = cache_info_to_inode(ci);

 mutex_unlock(&oi->ip_io_mutex);
}
