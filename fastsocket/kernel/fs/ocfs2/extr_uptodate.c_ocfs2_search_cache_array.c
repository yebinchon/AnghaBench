
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* ci_array; } ;
struct ocfs2_caching_info {int ci_num_cached; TYPE_1__ ci_cache; } ;
typedef scalar_t__ sector_t ;



__attribute__((used)) static int ocfs2_search_cache_array(struct ocfs2_caching_info *ci,
        sector_t item)
{
 int i;

 for (i = 0; i < ci->ci_num_cached; i++) {
  if (item == ci->ci_cache.ci_array[i])
   return i;
 }

 return -1;
}
