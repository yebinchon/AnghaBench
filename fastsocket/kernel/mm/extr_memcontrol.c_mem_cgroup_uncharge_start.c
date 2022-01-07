
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int do_batch; scalar_t__ memsw_bytes; scalar_t__ bytes; int * memcg; } ;
struct TYPE_4__ {TYPE_1__ memcg_batch; } ;


 TYPE_2__* current ;

void mem_cgroup_uncharge_start(void)
{
 current->memcg_batch.do_batch++;

 if (current->memcg_batch.do_batch == 1) {
  current->memcg_batch.memcg = ((void*)0);
  current->memcg_batch.bytes = 0;
  current->memcg_batch.memsw_bytes = 0;
 }
}
