
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fcall {size_t size; int * sdata; scalar_t__ capacity; } ;


 size_t MIN (scalar_t__,size_t) ;
 int memcpy (int *,void const*,size_t) ;

__attribute__((used)) static size_t pdu_write(struct p9_fcall *pdu, const void *data, size_t size)
{
 size_t len = MIN(pdu->capacity - pdu->size, size);
 memcpy(&pdu->sdata[pdu->size], data, len);
 pdu->size += len;
 return size - len;
}
