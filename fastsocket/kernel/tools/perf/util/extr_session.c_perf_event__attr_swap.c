
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct perf_event_attr {void* read_format; void* bp_len; void* bp_addr; void* bp_type; void* wakeup_events; void* sample_type; void* sample_period; void* config; void* size; void* type; } ;


 void* bswap_32 (void*) ;
 void* bswap_64 (void*) ;
 int swap_bitfield (int *,int) ;

void perf_event__attr_swap(struct perf_event_attr *attr)
{
 attr->type = bswap_32(attr->type);
 attr->size = bswap_32(attr->size);
 attr->config = bswap_64(attr->config);
 attr->sample_period = bswap_64(attr->sample_period);
 attr->sample_type = bswap_64(attr->sample_type);
 attr->read_format = bswap_64(attr->read_format);
 attr->wakeup_events = bswap_32(attr->wakeup_events);
 attr->bp_type = bswap_32(attr->bp_type);
 attr->bp_addr = bswap_64(attr->bp_addr);
 attr->bp_len = bswap_64(attr->bp_len);

 swap_bitfield((u8 *) (&attr->read_format + 1), sizeof(u64));
}
