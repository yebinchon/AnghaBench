
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;


 struct pid* ftrace_swapper_pid ;
 int set_ftrace_pid (struct pid*) ;
 int set_ftrace_swapper () ;

__attribute__((used)) static void set_ftrace_pid_task(struct pid *pid)
{
 if (pid == ftrace_swapper_pid)
  set_ftrace_swapper();
 else
  set_ftrace_pid(pid);
}
