
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_queue {struct dma_desc* head; } ;
struct dma_desc {struct dma_desc* lastAddr; struct dma_desc* nextAddr; } ;


 scalar_t__ queue_empty (struct dma_queue*) ;

struct dma_desc *dma_unlink_head(struct dma_queue *queue)
{
 struct dma_desc *desc;

 if (queue_empty(queue))
  return ((void*)0);

 desc = queue->head;

 queue->head = desc->lastAddr->nextAddr;


 desc->lastAddr->nextAddr = desc->lastAddr;
 desc->lastAddr->lastAddr = desc->lastAddr;

 return desc;
}
