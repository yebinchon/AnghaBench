
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_BUFFERS_ON_BIT ;
 int clear_bit (int ,int *) ;
 int ring_buffer_flags ;

void tracing_off(void)
{
 clear_bit(RB_BUFFERS_ON_BIT, &ring_buffer_flags);
}
