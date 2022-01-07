
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* buffer; scalar_t__ count; } ;
typedef TYPE_1__ Buffer ;



void
Buf_Empty(Buffer *bp)
{

    bp->count = 0;
    *bp->buffer = 0;
}
