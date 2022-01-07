
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int purge_fragmented_blocks (int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void purge_fragmented_blocks_thiscpu(void)
{
 purge_fragmented_blocks(smp_processor_id());
}
