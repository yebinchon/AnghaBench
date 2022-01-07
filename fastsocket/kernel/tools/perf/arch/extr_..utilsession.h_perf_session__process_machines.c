
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_tool {int dummy; } ;
struct perf_session {int machines; int host_machine; } ;
typedef int (* machine__process_t ) (int *,struct perf_tool*) ;


 void machines__process (int *,int (*) (int *,struct perf_tool*),struct perf_tool*) ;

__attribute__((used)) static inline
void perf_session__process_machines(struct perf_session *self,
        struct perf_tool *tool,
        machine__process_t process)
{
 process(&self->host_machine, tool);
 return machines__process(&self->machines, process, tool);
}
