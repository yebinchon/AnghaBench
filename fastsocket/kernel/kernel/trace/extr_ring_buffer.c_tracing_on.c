
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_BUFFERS_ON_BIT ;
 int ring_buffer_flags ;
 int set_bit (int ,int *) ;

void tracing_on(void)
{
 set_bit(RB_BUFFERS_ON_BIT, &ring_buffer_flags);
}
