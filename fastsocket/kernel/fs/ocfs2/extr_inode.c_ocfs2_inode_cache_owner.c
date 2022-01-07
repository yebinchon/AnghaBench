
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_inode_info {int ip_blkno; } ;
struct ocfs2_caching_info {int dummy; } ;


 struct ocfs2_inode_info* cache_info_to_inode (struct ocfs2_caching_info*) ;

__attribute__((used)) static u64 ocfs2_inode_cache_owner(struct ocfs2_caching_info *ci)
{
 struct ocfs2_inode_info *oi = cache_info_to_inode(ci);

 return oi->ip_blkno;
}
