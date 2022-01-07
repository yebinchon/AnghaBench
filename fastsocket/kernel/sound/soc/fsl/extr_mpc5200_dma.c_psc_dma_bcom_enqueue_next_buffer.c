
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psc_dma_stream {scalar_t__ period_bytes; scalar_t__ period_next_pt; scalar_t__ period_end; scalar_t__ period_start; int bcom_task; } ;
struct bcom_bd {scalar_t__ status; scalar_t__* data; } ;


 struct bcom_bd* bcom_prepare_next_buffer (int ) ;
 int bcom_submit_next_buffer (int ,int *) ;

__attribute__((used)) static void psc_dma_bcom_enqueue_next_buffer(struct psc_dma_stream *s)
{
 struct bcom_bd *bd;


 bd = bcom_prepare_next_buffer(s->bcom_task);
 bd->status = s->period_bytes;
 bd->data[0] = s->period_next_pt;
 bcom_submit_next_buffer(s->bcom_task, ((void*)0));


 s->period_next_pt += s->period_bytes;
 if (s->period_next_pt >= s->period_end)
  s->period_next_pt = s->period_start;
}
