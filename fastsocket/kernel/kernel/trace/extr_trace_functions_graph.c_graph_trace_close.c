
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int private; } ;


 int free_percpu (int ) ;

void graph_trace_close(struct trace_iterator *iter)
{
 free_percpu(iter->private);
}
