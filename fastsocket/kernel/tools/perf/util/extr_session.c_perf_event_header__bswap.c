
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_header {void* size; void* misc; int type; } ;


 void* bswap_16 (void*) ;
 int bswap_32 (int ) ;

void perf_event_header__bswap(struct perf_event_header *self)
{
 self->type = bswap_32(self->type);
 self->misc = bswap_16(self->misc);
 self->size = bswap_16(self->size);
}
