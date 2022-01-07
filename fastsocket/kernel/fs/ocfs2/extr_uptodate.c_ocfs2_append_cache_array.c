
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* ci_array; } ;
struct ocfs2_caching_info {size_t ci_num_cached; TYPE_1__ ci_cache; } ;
typedef scalar_t__ sector_t ;


 int BUG_ON (int) ;
 size_t OCFS2_CACHE_INFO_MAX_ARRAY ;
 int mlog (int ,char*,unsigned long long,size_t) ;

__attribute__((used)) static void ocfs2_append_cache_array(struct ocfs2_caching_info *ci,
         sector_t block)
{
 BUG_ON(ci->ci_num_cached >= OCFS2_CACHE_INFO_MAX_ARRAY);

 mlog(0, "block %llu takes position %u\n", (unsigned long long) block,
      ci->ci_num_cached);

 ci->ci_cache.ci_array[ci->ci_num_cached] = block;
 ci->ci_num_cached++;
}
