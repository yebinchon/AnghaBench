
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int len; scalar_t__ data; } ;
struct carlu {unsigned int dma_chunk_size; unsigned int used_dma_chunks; int mem_lock; int tx_pending; } ;
struct _carl9170_tx_superframe {int dummy; } ;


 int SDL_mutexP (int ) ;
 int SDL_mutexV (int ) ;
 unsigned int roundup (int ,unsigned int) ;

__attribute__((used)) static void carlu_free_dev_mem(struct carlu *ar,
     struct frame *frame)
{
 struct _carl9170_tx_superframe *txp = (void *)frame->data;
 unsigned int len, chunks;

 len = roundup(frame->len, ar->dma_chunk_size);
 chunks = len / ar->dma_chunk_size;

 SDL_mutexP(ar->mem_lock);
 ar->used_dma_chunks -= chunks;
 ar->tx_pending--;
 SDL_mutexV(ar->mem_lock);
}
