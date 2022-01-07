
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buffer; scalar_t__ count; scalar_t__ size; } ;
typedef int Byte ;
typedef TYPE_1__ Buffer ;
typedef scalar_t__ Boolean ;


 int free (int *) ;

Byte *
Buf_Destroy(Buffer *buf, Boolean freeData)
{
    Byte *data;

    data = buf->buffer;
    if (freeData) {
 free(data);
 data = ((void*)0);
    }

    buf->size = 0;
    buf->count = 0;
    buf->buffer = ((void*)0);

    return data;
}
