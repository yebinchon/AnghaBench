
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {int free_size; int contig_hint; } ;


 int pcpu_size_to_slot (int) ;

__attribute__((used)) static int pcpu_chunk_slot(const struct pcpu_chunk *chunk)
{
 if (chunk->free_size < sizeof(int) || chunk->contig_hint < sizeof(int))
  return 0;

 return pcpu_size_to_slot(chunk->free_size);
}
