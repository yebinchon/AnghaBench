
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct mem_cgroup {int memsw_is_minimum; int res; int memsw; } ;


 int EINTR ;
 int EINVAL ;
 int GFP_KERNEL ;
 int MEM_CGROUP_RECLAIM_RETRIES ;
 int MEM_CGROUP_RECLAIM_SHRINK ;
 int RES_LIMIT ;
 int RES_USAGE ;
 int current ;
 int mem_cgroup_count_children (struct mem_cgroup*) ;
 int mem_cgroup_reclaim (struct mem_cgroup*,int ,int ) ;
 int memcg_oom_recover (struct mem_cgroup*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long long res_counter_read_u64 (int *,int ) ;
 int res_counter_set_limit (int *,unsigned long long) ;
 int set_limit_mutex ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int mem_cgroup_resize_limit(struct mem_cgroup *memcg,
    unsigned long long val)
{
 int retry_count;
 int progress;
 u64 memswlimit, memlimit;
 int ret = 0;
 int children = mem_cgroup_count_children(memcg);
 u64 curusage, oldusage;
 int enlarge;






 retry_count = MEM_CGROUP_RECLAIM_RETRIES * children;

 oldusage = res_counter_read_u64(&memcg->res, RES_USAGE);

 enlarge = 0;
 while (retry_count) {
  if (signal_pending(current)) {
   ret = -EINTR;
   break;
  }





  mutex_lock(&set_limit_mutex);
  memswlimit = res_counter_read_u64(&memcg->memsw, RES_LIMIT);
  if (memswlimit < val) {
   ret = -EINVAL;
   mutex_unlock(&set_limit_mutex);
   break;
  }

  memlimit = res_counter_read_u64(&memcg->res, RES_LIMIT);
  if (memlimit < val)
   enlarge = 1;

  ret = res_counter_set_limit(&memcg->res, val);
  if (!ret) {
   if (memswlimit == val)
    memcg->memsw_is_minimum = 1;
   else
    memcg->memsw_is_minimum = 0;
  }
  mutex_unlock(&set_limit_mutex);

  if (!ret)
   break;

  progress = mem_cgroup_reclaim(memcg, GFP_KERNEL,
           MEM_CGROUP_RECLAIM_SHRINK);
  curusage = res_counter_read_u64(&memcg->res, RES_USAGE);

    if (curusage >= oldusage)
   retry_count--;
  else
   oldusage = curusage;
 }
 if (!ret && enlarge)
  memcg_oom_recover(memcg);

 return ret;
}
