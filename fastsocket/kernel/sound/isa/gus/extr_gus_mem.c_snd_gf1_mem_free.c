
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gf1_mem_block {int dummy; } ;
struct snd_gf1_mem {int dummy; } ;


 int EINVAL ;
 int snd_gf1_mem_lock (struct snd_gf1_mem*,int) ;
 struct snd_gf1_mem_block* snd_gf1_mem_look (struct snd_gf1_mem*,unsigned int) ;
 int snd_gf1_mem_xfree (struct snd_gf1_mem*,struct snd_gf1_mem_block*) ;

int snd_gf1_mem_free(struct snd_gf1_mem * alloc, unsigned int address)
{
 int result;
 struct snd_gf1_mem_block *block;

 snd_gf1_mem_lock(alloc, 0);
 if ((block = snd_gf1_mem_look(alloc, address)) != ((void*)0)) {
  result = snd_gf1_mem_xfree(alloc, block);
  snd_gf1_mem_lock(alloc, 1);
  return result;
 }
 snd_gf1_mem_lock(alloc, 1);
 return -EINVAL;
}
