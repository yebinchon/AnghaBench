
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_util_memhdr {unsigned int size; unsigned int used; int block_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int snd_util_mem_avail(struct snd_util_memhdr *hdr)
{
 unsigned int size;
 mutex_lock(&hdr->block_mutex);
 size = hdr->size - hdr->used;
 mutex_unlock(&hdr->block_mutex);
 return size;
}
