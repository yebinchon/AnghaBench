
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dummy; } ;
struct perf_session {int machines; struct machine host_machine; } ;
typedef scalar_t__ pid_t ;


 scalar_t__ HOST_KERNEL_ID ;
 struct machine* machines__find (int *,scalar_t__) ;

__attribute__((used)) static inline
struct machine *perf_session__find_machine(struct perf_session *self, pid_t pid)
{
 if (pid == HOST_KERNEL_ID)
  return &self->host_machine;
 return machines__find(&self->machines, pid);
}
