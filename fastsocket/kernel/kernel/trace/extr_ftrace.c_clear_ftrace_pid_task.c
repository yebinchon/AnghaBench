
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;


 int clear_ftrace_pid (struct pid*) ;
 int clear_ftrace_swapper () ;
 struct pid* ftrace_swapper_pid ;

__attribute__((used)) static void clear_ftrace_pid_task(struct pid *pid)
{
 if (pid == ftrace_swapper_pid)
  clear_ftrace_swapper();
 else
  clear_ftrace_pid(pid);
}
