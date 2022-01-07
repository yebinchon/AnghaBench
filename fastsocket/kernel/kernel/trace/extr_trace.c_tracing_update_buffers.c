
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ring_buffer_expanded ;
 int trace_buf_size ;
 int trace_types_lock ;
 int tracing_resize_ring_buffer (int ) ;

int tracing_update_buffers(void)
{
 int ret = 0;

 mutex_lock(&trace_types_lock);
 if (!ring_buffer_expanded)
  ret = tracing_resize_ring_buffer(trace_buf_size);
 mutex_unlock(&trace_types_lock);

 return ret;
}
