
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct mem_cgroup {int css; } ;
typedef int gfp_t ;


 int PAGE_SIZE ;
 int PageSwapCache (struct page*) ;
 int __mem_cgroup_try_charge (struct mm_struct*,int ,struct mem_cgroup**,int,struct page*,int ) ;
 int css_put (int *) ;
 int do_swap_account ;
 struct mm_struct init_mm ;
 scalar_t__ mem_cgroup_disabled () ;
 struct mem_cgroup* try_get_mem_cgroup_from_page (struct page*) ;
 scalar_t__ unlikely (int) ;

int mem_cgroup_try_charge_swapin(struct mm_struct *mm,
     struct page *page,
     gfp_t mask, struct mem_cgroup **ptr)
{
 struct mem_cgroup *mem;
 int ret;

 if (mem_cgroup_disabled())
  return 0;

 if (!do_swap_account)
  goto charge_cur_mm;






 if (!PageSwapCache(page))
  goto charge_cur_mm;
 mem = try_get_mem_cgroup_from_page(page);
 if (!mem)
  goto charge_cur_mm;
 *ptr = mem;
 ret = __mem_cgroup_try_charge(((void*)0), mask, ptr, 1, page, PAGE_SIZE);
 css_put(&mem->css);
 return ret;
charge_cur_mm:
 if (unlikely(!mm))
  mm = &init_mm;
 return __mem_cgroup_try_charge(mm, mask, ptr, 1, page, PAGE_SIZE);
}
