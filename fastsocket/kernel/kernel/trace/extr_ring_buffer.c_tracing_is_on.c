
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RB_BUFFERS_ON ;
 scalar_t__ ring_buffer_flags ;

int tracing_is_on(void)
{
 return ring_buffer_flags == RB_BUFFERS_ON;
}
