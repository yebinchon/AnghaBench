
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct dma_desc {int * nextAddr; int * dataAddr; struct dma_desc* lastAddr; scalar_t__ totalLen; int dataSize; scalar_t__ ctrl; int status; } ;


 int AR9170_OWN_BITS_SW ;

__attribute__((used)) static void fill_descriptor(struct dma_desc *d, uint16_t size, uint8_t *data)
{
 d->status = AR9170_OWN_BITS_SW;
 d->ctrl = 0;
 d->dataSize = size;
 d->totalLen = 0;
 d->lastAddr = d;
 d->dataAddr = data;
 d->nextAddr = ((void*)0);
}
