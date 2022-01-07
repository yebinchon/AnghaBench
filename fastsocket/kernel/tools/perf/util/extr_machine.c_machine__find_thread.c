
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct machine {int dummy; } ;
typedef int pid_t ;


 struct thread* __machine__findnew_thread (struct machine*,int ,int) ;

struct thread *machine__find_thread(struct machine *machine, pid_t pid)
{
 return __machine__findnew_thread(machine, pid, 0);
}
