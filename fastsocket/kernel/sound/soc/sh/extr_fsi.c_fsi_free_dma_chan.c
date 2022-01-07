
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dma_chan; } ;
struct TYPE_4__ {int dma_chan; } ;
struct TYPE_6__ {TYPE_2__ fsib; TYPE_1__ fsia; } ;


 int PORTA_DMA ;
 int PORTB_DMA ;
 int dma_wait_for_completion (int ) ;
 int free_dma (int ) ;
 TYPE_3__* master ;

__attribute__((used)) static void fsi_free_dma_chan(void)
{
 dma_wait_for_completion(PORTA_DMA);
 dma_wait_for_completion(PORTB_DMA);
 free_dma(PORTA_DMA);
 free_dma(PORTB_DMA);

 master->fsia.dma_chan = -1;
 master->fsib.dma_chan = -1;
}
