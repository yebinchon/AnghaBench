
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct memcg_batch_info {int bytes; int memsw_bytes; struct mem_cgroup* memcg; int do_batch; } ;
struct mem_cgroup {int memsw; int res; } ;
typedef enum charge_type { ____Placeholder_charge_type } charge_type ;
struct TYPE_2__ {struct memcg_batch_info memcg_batch; } ;


 int const MEM_CGROUP_CHARGE_TYPE_SWAPOUT ;
 int PAGE_SIZE ;
 int TIF_MEMDIE ;
 TYPE_1__* current ;
 int do_swap_account ;
 int memcg_oom_recover (struct mem_cgroup*) ;
 int res_counter_uncharge (int *,int) ;
 scalar_t__ test_thread_flag (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
__do_uncharge(struct mem_cgroup *mem, const enum charge_type ctype, int page_size)
{
 struct memcg_batch_info *batch = ((void*)0);
 bool uncharge_memsw = 1;


 if (!do_swap_account || ctype == MEM_CGROUP_CHARGE_TYPE_SWAPOUT)
  uncharge_memsw = 0;

 batch = &current->memcg_batch;





 if (!batch->memcg)
  batch->memcg = mem;
 if (!batch->do_batch || test_thread_flag(TIF_MEMDIE))
  goto direct_uncharge;

 if (page_size > PAGE_SIZE)
  goto direct_uncharge;






 if (batch->memcg != mem)
  goto direct_uncharge;

 batch->bytes += page_size;
 if (uncharge_memsw)
  batch->memsw_bytes += page_size;
 return;
direct_uncharge:
 res_counter_uncharge(&mem->res, page_size);
 if (uncharge_memsw)
  res_counter_uncharge(&mem->memsw, page_size);
 if (unlikely(batch->memcg != mem))
  memcg_oom_recover(mem);
 return;
}
