
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gf1_mem_block {unsigned int ptr; struct snd_gf1_mem_block* next; } ;
struct snd_gf1_mem {struct snd_gf1_mem_block* first; } ;



__attribute__((used)) static struct snd_gf1_mem_block *snd_gf1_mem_look(struct snd_gf1_mem * alloc,
          unsigned int address)
{
 struct snd_gf1_mem_block *block;

 for (block = alloc->first; block; block = block->next) {
  if (block->ptr == address) {
   return block;
  }
 }
 return ((void*)0);
}
