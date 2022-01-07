
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int host_machine; } ;


 int machine__delete_dead_threads (int *) ;

__attribute__((used)) static void perf_session__delete_dead_threads(struct perf_session *session)
{
 machine__delete_dead_threads(&session->host_machine);
}
