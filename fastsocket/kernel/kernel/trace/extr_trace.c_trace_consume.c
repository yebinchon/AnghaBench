
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {int ts; int cpu; TYPE_1__* tr; } ;
struct TYPE_2__ {int buffer; } ;


 int ftrace_disable_cpu () ;
 int ftrace_enable_cpu () ;
 int ring_buffer_consume (int ,int ,int *) ;

__attribute__((used)) static void trace_consume(struct trace_iterator *iter)
{

 ftrace_disable_cpu();
 ring_buffer_consume(iter->tr->buffer, iter->cpu, &iter->ts);
 ftrace_enable_cpu();
}
