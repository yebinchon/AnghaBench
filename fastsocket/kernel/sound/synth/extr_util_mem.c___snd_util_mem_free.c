
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_util_memhdr {int used; int nblocks; } ;
struct snd_util_memblk {scalar_t__ size; int list; } ;


 int kfree (struct snd_util_memblk*) ;
 int list_del (int *) ;

void
__snd_util_mem_free(struct snd_util_memhdr *hdr, struct snd_util_memblk *blk)
{
 list_del(&blk->list);
 hdr->nblocks--;
 hdr->used -= blk->size;
 kfree(blk);
}
