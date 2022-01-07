
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_caching_operations {int dummy; } ;
struct ocfs2_caching_info {struct ocfs2_caching_operations const* ci_ops; } ;


 int BUG_ON (int) ;
 int ocfs2_metadata_cache_reset (struct ocfs2_caching_info*,int) ;

void ocfs2_metadata_cache_init(struct ocfs2_caching_info *ci,
          const struct ocfs2_caching_operations *ops)
{
 BUG_ON(!ops);

 ci->ci_ops = ops;
 ocfs2_metadata_cache_reset(ci, 1);
}
