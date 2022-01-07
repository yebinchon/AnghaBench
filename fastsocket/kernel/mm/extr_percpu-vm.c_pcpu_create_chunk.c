
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {scalar_t__ addr; } ;
struct pcpu_chunk {scalar_t__ base_addr; struct vm_struct** data; } ;


 int GFP_KERNEL ;
 struct pcpu_chunk* pcpu_alloc_chunk () ;
 int pcpu_atom_size ;
 int pcpu_free_chunk (struct pcpu_chunk*) ;
 struct vm_struct** pcpu_get_vm_areas (scalar_t__*,int ,int ,int ,int ) ;
 scalar_t__* pcpu_group_offsets ;
 int pcpu_group_sizes ;
 int pcpu_nr_groups ;

__attribute__((used)) static struct pcpu_chunk *pcpu_create_chunk(void)
{
 struct pcpu_chunk *chunk;
 struct vm_struct **vms;

 chunk = pcpu_alloc_chunk();
 if (!chunk)
  return ((void*)0);

 vms = pcpu_get_vm_areas(pcpu_group_offsets, pcpu_group_sizes,
    pcpu_nr_groups, pcpu_atom_size, GFP_KERNEL);
 if (!vms) {
  pcpu_free_chunk(chunk);
  return ((void*)0);
 }

 chunk->data = vms;
 chunk->base_addr = vms[0]->addr - pcpu_group_offsets[0];
 return chunk;
}
