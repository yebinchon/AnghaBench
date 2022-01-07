
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int tr; } ;


 int tracing_reset_online_cpus (int ) ;

__attribute__((used)) static void trace_bts_close(struct trace_iterator *iter)
{
 tracing_reset_online_cpus(iter->tr);
}
