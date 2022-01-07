
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ocfs2_super {int s_clustersize_bits; } ;


 int OCFS2_XATTR_BUCKET_SIZE ;

__attribute__((used)) static inline u16 ocfs2_xattr_buckets_per_cluster(struct ocfs2_super *osb)
{
 return (1 << osb->s_clustersize_bits) / OCFS2_XATTR_BUCKET_SIZE;
}
