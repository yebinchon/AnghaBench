
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smem_shared {struct smem_heap_entry* heap_toc; } ;
struct smem_heap_entry {unsigned int size; scalar_t__ offset; scalar_t__ allocated; } ;


 scalar_t__ MSM_SHARED_RAM_BASE ;
 unsigned int SMEM_NUM_ITEMS ;

__attribute__((used)) static void *_smem_find(unsigned id, unsigned *size)
{
 struct smem_shared *shared = (void *) MSM_SHARED_RAM_BASE;
 struct smem_heap_entry *toc = shared->heap_toc;

 if (id >= SMEM_NUM_ITEMS)
  return 0;

 if (toc[id].allocated) {
  *size = toc[id].size;
  return (void *) (MSM_SHARED_RAM_BASE + toc[id].offset);
 }

 return 0;
}
