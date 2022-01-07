
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_queue {int dev; } ;
struct videobuf_dmabuf {int dummy; } ;
struct TYPE_3__ {int state; } ;
struct cx25821_buffer {TYPE_1__ vb; int risc; } ;


 int BUG_ON (int ) ;
 int VIDEOBUF_NEEDS_INIT ;
 int btcx_riscmem_free (int ,int *) ;
 int in_interrupt () ;
 int to_pci_dev (int ) ;
 int videobuf_dma_free (struct videobuf_dmabuf*) ;
 int videobuf_dma_unmap (struct videobuf_queue*,struct videobuf_dmabuf*) ;
 struct videobuf_dmabuf* videobuf_to_dma (TYPE_1__*) ;
 int videobuf_waiton (TYPE_1__*,int ,int ) ;

void cx25821_free_buffer(struct videobuf_queue *q, struct cx25821_buffer *buf)
{
 struct videobuf_dmabuf *dma = videobuf_to_dma(&buf->vb);

 BUG_ON(in_interrupt());
 videobuf_waiton(&buf->vb, 0, 0);
 videobuf_dma_unmap(q, dma);
 videobuf_dma_free(dma);
 btcx_riscmem_free(to_pci_dev(q->dev), &buf->risc);
 buf->vb.state = VIDEOBUF_NEEDS_INIT;
}
