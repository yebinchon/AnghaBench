
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame {int len; scalar_t__ data; } ;
struct carlu {unsigned int dma_chunk_size; scalar_t__ tx_pending; scalar_t__ dma_chunks; scalar_t__ used_dma_chunks; int mem_lock; int cookie; } ;
struct TYPE_2__ {scalar_t__ cookie; } ;
struct _carl9170_tx_superframe {TYPE_1__ s; } ;


 int ENOSPC ;
 int SDL_mutexP (int ) ;
 int SDL_mutexV (int ) ;
 unsigned int roundup (int ,unsigned int) ;

__attribute__((used)) static int carlu_alloc_dev_mem(struct carlu *ar,
    struct frame *frame)
{
 struct _carl9170_tx_superframe *txp = (void *)frame->data;
 unsigned int len, chunks;

 len = roundup(frame->len, ar->dma_chunk_size);
 chunks = len / ar->dma_chunk_size;

 SDL_mutexP(ar->mem_lock);
 if (ar->tx_pending >= ar->dma_chunks ||
     ar->used_dma_chunks + chunks >= ar->dma_chunks) {
  SDL_mutexV(ar->mem_lock);
  return -ENOSPC;
 }

 ar->used_dma_chunks += chunks;
 ar->tx_pending++;
 txp->s.cookie = ar->cookie++;
 SDL_mutexV(ar->mem_lock);

 return 0;
}
