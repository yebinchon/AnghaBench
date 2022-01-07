
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dma_size; int * dma_risc; TYPE_2__* buf; TYPE_4__* pci; } ;
typedef TYPE_1__ snd_cx25821_card_t ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int risc; } ;


 int BUG_ON (int) ;
 int btcx_riscmem_free (TYPE_4__*,int *) ;
 int dprintk (int,char*) ;
 int kfree (TYPE_2__*) ;
 int videobuf_dma_free (int *) ;
 int videobuf_sg_dma_unmap (int *,int *) ;

__attribute__((used)) static int dsp_buffer_free(snd_cx25821_card_t * chip)
{
 BUG_ON(!chip->dma_size);

 dprintk(2, "Freeing buffer\n");
 videobuf_sg_dma_unmap(&chip->pci->dev, chip->dma_risc);
 videobuf_dma_free(chip->dma_risc);
 btcx_riscmem_free(chip->pci, &chip->buf->risc);
 kfree(chip->buf);

 chip->dma_risc = ((void*)0);
 chip->dma_size = 0;

 return 0;
}
