
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct memcg_batch_info {TYPE_1__* memcg; scalar_t__ memsw_bytes; scalar_t__ bytes; scalar_t__ do_batch; } ;
struct TYPE_4__ {struct memcg_batch_info memcg_batch; } ;
struct TYPE_3__ {int memsw; int res; } ;


 TYPE_2__* current ;
 int memcg_oom_recover (TYPE_1__*) ;
 int res_counter_uncharge (int *,scalar_t__) ;

void mem_cgroup_uncharge_end(void)
{
 struct memcg_batch_info *batch = &current->memcg_batch;

 if (!batch->do_batch)
  return;

 batch->do_batch--;
 if (batch->do_batch)
  return;

 if (!batch->memcg)
  return;




 if (batch->bytes)
  res_counter_uncharge(&batch->memcg->res, batch->bytes);
 if (batch->memsw_bytes)
  res_counter_uncharge(&batch->memcg->memsw, batch->memsw_bytes);
 memcg_oom_recover(batch->memcg);

 batch->memcg = ((void*)0);
}
