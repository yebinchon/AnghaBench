
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; scalar_t__* buffer; scalar_t__ count; } ;
typedef TYPE_1__ Buffer ;


 int BUF_DEF_SIZE ;
 scalar_t__* bmake_malloc (int) ;

void
Buf_Init(Buffer *bp, int size)
{
    if (size <= 0) {
 size = BUF_DEF_SIZE;
    }
    bp->size = size;
    bp->count = 0;
    bp->buffer = bmake_malloc(size);
    *bp->buffer = 0;
}
