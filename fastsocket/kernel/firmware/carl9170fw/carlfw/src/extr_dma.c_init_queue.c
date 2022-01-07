
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_queue {struct dma_desc* terminator; struct dma_desc* head; } ;
struct dma_desc {int dummy; } ;



__attribute__((used)) static void init_queue(struct dma_queue *q, struct dma_desc *d)
{
 q->head = q->terminator = d;
}
