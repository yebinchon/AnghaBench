
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {size_t cpu; scalar_t__* buffer_iter; int idx; } ;


 int ftrace_disable_cpu () ;
 int ftrace_enable_cpu () ;
 int ring_buffer_read (scalar_t__,int *) ;

__attribute__((used)) static void trace_iterator_increment(struct trace_iterator *iter)
{

 ftrace_disable_cpu();

 iter->idx++;
 if (iter->buffer_iter[iter->cpu])
  ring_buffer_read(iter->buffer_iter[iter->cpu], ((void*)0));

 ftrace_enable_cpu();
}
