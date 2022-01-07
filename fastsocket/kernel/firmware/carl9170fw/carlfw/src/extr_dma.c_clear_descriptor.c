
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {struct dma_desc* nextAddr; int * dataAddr; struct dma_desc* lastAddr; scalar_t__ totalLen; scalar_t__ dataSize; scalar_t__ ctrl; int status; } ;


 int AR9170_OWN_BITS_SW ;

__attribute__((used)) static void clear_descriptor(struct dma_desc *d)
{
 d->status = AR9170_OWN_BITS_SW;
 d->ctrl = 0;
 d->dataSize = 0;
 d->totalLen = 0;
 d->lastAddr = d;
 d->dataAddr = ((void*)0);
 d->nextAddr = d;
}
