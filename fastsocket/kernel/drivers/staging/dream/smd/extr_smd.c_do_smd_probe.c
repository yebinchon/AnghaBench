
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ free_offset; } ;
struct smem_shared {TYPE_1__ heap_info; } ;


 scalar_t__ MSM_SHARED_RAM_BASE ;
 scalar_t__ last_heap_free ;
 int probe_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void do_smd_probe(void)
{
 struct smem_shared *shared = (void *) MSM_SHARED_RAM_BASE;
 if (shared->heap_info.free_offset != last_heap_free) {
  last_heap_free = shared->heap_info.free_offset;
  schedule_work(&probe_work);
 }
}
