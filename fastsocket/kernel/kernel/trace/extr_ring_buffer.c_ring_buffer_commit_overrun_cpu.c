
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int commit_overrun; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int cpumask; } ;


 int cpumask_test_cpu (int,int ) ;
 unsigned long local_read (int *) ;

unsigned long
ring_buffer_commit_overrun_cpu(struct ring_buffer *buffer, int cpu)
{
 struct ring_buffer_per_cpu *cpu_buffer;
 unsigned long ret;

 if (!cpumask_test_cpu(cpu, buffer->cpumask))
  return 0;

 cpu_buffer = buffer->buffers[cpu];
 ret = local_read(&cpu_buffer->commit_overrun);

 return ret;
}
