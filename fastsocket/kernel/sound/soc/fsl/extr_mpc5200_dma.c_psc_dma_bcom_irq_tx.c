
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psc_dma_stream {scalar_t__ period_current_pt; scalar_t__ period_bytes; scalar_t__ period_end; scalar_t__ period_start; int stream; scalar_t__ active; TYPE_1__* psc_dma; int bcom_task; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int lock; } ;


 int IRQ_HANDLED ;
 scalar_t__ bcom_buffer_done (int ) ;
 int bcom_retrieve_buffer (int ,int *,int *) ;
 int psc_dma_bcom_enqueue_tx (struct psc_dma_stream*) ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t psc_dma_bcom_irq_tx(int irq, void *_psc_dma_stream)
{
 struct psc_dma_stream *s = _psc_dma_stream;

 spin_lock(&s->psc_dma->lock);


 while (bcom_buffer_done(s->bcom_task)) {
  bcom_retrieve_buffer(s->bcom_task, ((void*)0), ((void*)0));

  s->period_current_pt += s->period_bytes;
  if (s->period_current_pt >= s->period_end)
   s->period_current_pt = s->period_start;
 }
 psc_dma_bcom_enqueue_tx(s);
 spin_unlock(&s->psc_dma->lock);



 if (s->active)
  snd_pcm_period_elapsed(s->stream);

 return IRQ_HANDLED;
}
