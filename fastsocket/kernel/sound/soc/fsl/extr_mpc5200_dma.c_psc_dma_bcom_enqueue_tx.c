
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct psc_dma_stream {scalar_t__ appl_ptr; scalar_t__ period_size; int bcom_task; TYPE_1__* runtime; } ;
struct TYPE_4__ {scalar_t__ appl_ptr; } ;
struct TYPE_3__ {scalar_t__ boundary; TYPE_2__* control; } ;


 scalar_t__ bcom_queue_full (int ) ;
 int psc_dma_bcom_enqueue_next_buffer (struct psc_dma_stream*) ;

__attribute__((used)) static void psc_dma_bcom_enqueue_tx(struct psc_dma_stream *s)
{
 if (s->appl_ptr > s->runtime->control->appl_ptr) {





  while (s->appl_ptr < s->runtime->boundary) {
   if (bcom_queue_full(s->bcom_task))
    return;

   s->appl_ptr += s->period_size;

   psc_dma_bcom_enqueue_next_buffer(s);
  }
  s->appl_ptr -= s->runtime->boundary;
 }

 while (s->appl_ptr < s->runtime->control->appl_ptr) {

  if (bcom_queue_full(s->bcom_task))
   return;

  s->appl_ptr += s->period_size;

  psc_dma_bcom_enqueue_next_buffer(s);
 }
}
