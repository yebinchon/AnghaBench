
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int * buffer; } ;
typedef int Byte ;
typedef TYPE_1__ Buffer ;



Byte *
Buf_GetAll(Buffer *bp, int *numBytesPtr)
{

    if (numBytesPtr != ((void*)0))
 *numBytesPtr = bp->count;

    return (bp->buffer);
}
