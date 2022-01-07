
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_caching_info {TYPE_1__* ci_ops; } ;
struct TYPE_2__ {int (* co_owner ) (struct ocfs2_caching_info*) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct ocfs2_caching_info*) ;

u64 ocfs2_metadata_cache_owner(struct ocfs2_caching_info *ci)
{
 BUG_ON(!ci || !ci->ci_ops);

 return ci->ci_ops->co_owner(ci);
}
