
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ring_buffer {int dummy; } ;


 int DEBUG_SHIFT ;

void ring_buffer_normalize_time_stamp(struct ring_buffer *buffer,
          int cpu, u64 *ts)
{

 *ts >>= DEBUG_SHIFT;
}
