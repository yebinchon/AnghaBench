
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct perf_session {int dummy; } ;


 struct thread* perf_session__findnew (struct perf_session*,int ) ;
 int pr_err (char*) ;
 scalar_t__ thread__set_comm (struct thread*,char*) ;

__attribute__((used)) static struct thread *perf_session__register_idle_thread(struct perf_session *self)
{
 struct thread *thread = perf_session__findnew(self, 0);

 if (thread == ((void*)0) || thread__set_comm(thread, "swapper")) {
  pr_err("problem inserting idle task.\n");
  thread = ((void*)0);
 }

 return thread;
}
