
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int buffer; } ;
typedef TYPE_1__ Buffer ;


 int bmake_realloc (int ,int ) ;
 scalar_t__ max (int ,int) ;

void
Buf_Expand_1(Buffer *bp)
{
    bp->size += max(bp->size, 16);
    bp->buffer = bmake_realloc(bp->buffer, bp->size);
}
