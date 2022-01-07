
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {scalar_t__ data; } ;


 int pcpu_free_chunk (struct pcpu_chunk*) ;
 int pcpu_free_vm_areas (scalar_t__,int ) ;
 int pcpu_nr_groups ;

__attribute__((used)) static void pcpu_destroy_chunk(struct pcpu_chunk *chunk)
{
 if (chunk && chunk->data)
  pcpu_free_vm_areas(chunk->data, pcpu_nr_groups);
 pcpu_free_chunk(chunk);
}
