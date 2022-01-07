
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;


 struct pid* find_pid_ns (int,struct pid_namespace*) ;
 int next_pidmap (struct pid_namespace*,int) ;

struct pid *find_ge_pid(int nr, struct pid_namespace *ns)
{
 struct pid *pid;

 do {
  pid = find_pid_ns(nr, ns);
  if (pid)
   break;
  nr = next_pidmap(ns, nr);
 } while (nr > 0);

 return pid;
}
