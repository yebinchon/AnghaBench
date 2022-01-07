
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dummy; } ;
struct perf_session {struct machine host_machine; } ;



__attribute__((used)) static inline
struct machine *perf_session__find_host_machine(struct perf_session *self)
{
 return &self->host_machine;
}
