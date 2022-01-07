
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef int gfp_t ;


 int MEM_CGROUP_CHARGE_TYPE_CACHE ;
 int MEM_CGROUP_CHARGE_TYPE_SHMEM ;
 scalar_t__ PageCompound (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int __mem_cgroup_commit_charge_swapin (struct page*,struct mem_cgroup*,int ) ;
 struct mm_struct init_mm ;
 int mem_cgroup_charge_common (struct page*,struct mm_struct*,int ,int ,struct mem_cgroup*) ;
 scalar_t__ mem_cgroup_disabled () ;
 int mem_cgroup_try_charge_swapin (struct mm_struct*,struct page*,int ,struct mem_cgroup**) ;
 scalar_t__ page_is_file_cache (struct page*) ;
 scalar_t__ unlikely (int) ;

int mem_cgroup_cache_charge(struct page *page, struct mm_struct *mm,
    gfp_t gfp_mask)
{
 struct mem_cgroup *mem = ((void*)0);
 int ret;

 if (mem_cgroup_disabled())
  return 0;
 if (PageCompound(page))
  return 0;

 if (unlikely(!mm))
  mm = &init_mm;

 if (page_is_file_cache(page))
  return mem_cgroup_charge_common(page, mm, gfp_mask,
    MEM_CGROUP_CHARGE_TYPE_CACHE, ((void*)0));


 if (PageSwapCache(page)) {
  ret = mem_cgroup_try_charge_swapin(mm, page, gfp_mask, &mem);
  if (!ret)
   __mem_cgroup_commit_charge_swapin(page, mem,
     MEM_CGROUP_CHARGE_TYPE_SHMEM);
 } else
  ret = mem_cgroup_charge_common(page, mm, gfp_mask,
     MEM_CGROUP_CHARGE_TYPE_SHMEM, mem);

 return ret;
}
