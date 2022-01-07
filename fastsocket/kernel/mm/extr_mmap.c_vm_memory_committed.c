
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long percpu_counter_read_positive (int *) ;
 int vm_committed_as ;

unsigned long vm_memory_committed(void)
{
 return percpu_counter_read_positive(&vm_committed_as);
}
