
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct perf_session {int host_machine; } ;
typedef int pid_t ;


 struct thread* machine__findnew_thread (int *,int ) ;

struct thread *perf_session__findnew(struct perf_session *session, pid_t pid)
{
 return machine__findnew_thread(&session->host_machine, pid);
}
