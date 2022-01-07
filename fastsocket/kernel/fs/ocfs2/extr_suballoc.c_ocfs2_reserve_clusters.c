
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;


 int ALLOC_NEW_GROUP ;
 int ocfs2_reserve_clusters_with_limit (struct ocfs2_super*,int ,int ,int ,struct ocfs2_alloc_context**) ;

int ocfs2_reserve_clusters(struct ocfs2_super *osb,
      u32 bits_wanted,
      struct ocfs2_alloc_context **ac)
{
 return ocfs2_reserve_clusters_with_limit(osb, bits_wanted, 0,
       ALLOC_NEW_GROUP, ac);
}
