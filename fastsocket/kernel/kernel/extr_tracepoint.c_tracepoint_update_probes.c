
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __start___tracepoints ;
 int __stop___tracepoints ;
 int module_update_tracepoints () ;
 int tracepoint_update_probe_range (int ,int ) ;

__attribute__((used)) static void tracepoint_update_probes(void)
{

 tracepoint_update_probe_range(__start___tracepoints,
  __stop___tracepoints);

 module_update_tracepoints();
}
