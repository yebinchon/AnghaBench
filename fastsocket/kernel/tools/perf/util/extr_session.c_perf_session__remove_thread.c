
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct perf_session {int host_machine; } ;


 int machine__remove_thread (int *,struct thread*) ;

void perf_session__remove_thread(struct perf_session *session,
     struct thread *th)
{






 machine__remove_thread(&session->host_machine, th);
}
