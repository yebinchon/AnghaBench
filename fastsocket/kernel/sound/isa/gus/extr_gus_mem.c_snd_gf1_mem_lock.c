
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gf1_mem {int memory_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void snd_gf1_mem_lock(struct snd_gf1_mem * alloc, int xup)
{
 if (!xup) {
  mutex_lock(&alloc->memory_mutex);
 } else {
  mutex_unlock(&alloc->memory_mutex);
 }
}
