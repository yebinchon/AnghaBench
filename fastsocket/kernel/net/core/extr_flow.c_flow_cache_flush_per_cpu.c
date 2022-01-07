
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tasklet_struct {unsigned long data; } ;
struct flow_flush_info {TYPE_1__* cache; } ;
struct TYPE_4__ {struct tasklet_struct flush_tasklet; } ;
struct TYPE_3__ {int percpu; } ;


 TYPE_2__* per_cpu_ptr (int ,int) ;
 int smp_processor_id () ;
 int tasklet_schedule (struct tasklet_struct*) ;

__attribute__((used)) static void flow_cache_flush_per_cpu(void *data)
{
 struct flow_flush_info *info = data;
 int cpu;
 struct tasklet_struct *tasklet;

 cpu = smp_processor_id();
 tasklet = &per_cpu_ptr(info->cache->percpu, cpu)->flush_tasklet;
 tasklet->data = (unsigned long)info;
 tasklet_schedule(tasklet);
}
