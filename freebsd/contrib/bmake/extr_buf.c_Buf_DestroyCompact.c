
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int count; int buffer; } ;
typedef scalar_t__ Byte ;
typedef TYPE_1__ Buffer ;


 scalar_t__ BUF_COMPACT_LIMIT ;
 scalar_t__* Buf_Destroy (TYPE_1__*,int ) ;
 int FALSE ;
 scalar_t__* bmake_realloc (int ,int) ;

Byte *
Buf_DestroyCompact(Buffer *buf)
{
    return Buf_Destroy(buf, FALSE);
}
