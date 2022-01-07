
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {int last_pid; } ;


 int cmpxchg (int *,int,int) ;
 scalar_t__ pid_before (int,int,int) ;

__attribute__((used)) static void set_last_pid(struct pid_namespace *pid_ns, int base, int pid)
{
 int prev;
 int last_write = base;
 do {
  prev = last_write;
  last_write = cmpxchg(&pid_ns->last_pid, prev, pid);
 } while ((prev != last_write) && (pid_before(base, last_write, pid)));
}
