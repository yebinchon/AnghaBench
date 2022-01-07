
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fcall {size_t offset; int * sdata; scalar_t__ size; } ;


 size_t MIN (scalar_t__,size_t) ;
 int memcpy (void*,int *,size_t) ;

__attribute__((used)) static size_t pdu_read(struct p9_fcall *pdu, void *data, size_t size)
{
 size_t len = MIN(pdu->size - pdu->offset, size);
 memcpy(data, &pdu->sdata[pdu->offset], len);
 pdu->offset += len;
 return size - len;
}
