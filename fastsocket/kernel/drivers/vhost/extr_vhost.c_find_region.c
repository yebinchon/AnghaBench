
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vhost_memory_region {int guest_phys_addr; int memory_size; } const vhost_memory_region ;
struct vhost_memory {int nregions; struct vhost_memory_region const* regions; } ;
typedef int __u64 ;
typedef int __u32 ;



__attribute__((used)) static const struct vhost_memory_region *find_region(struct vhost_memory *mem,
           __u64 addr, __u32 len)
{
 struct vhost_memory_region *reg;
 int i;


 for (i = 0; i < mem->nregions; ++i) {
  reg = mem->regions + i;
  if (reg->guest_phys_addr <= addr &&
      reg->guest_phys_addr + reg->memory_size - 1 >= addr)
   return reg;
 }
 return ((void*)0);
}
