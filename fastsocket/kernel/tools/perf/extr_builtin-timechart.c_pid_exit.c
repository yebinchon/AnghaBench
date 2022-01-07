
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct per_pid {TYPE_1__* current; void* end_time; } ;
struct TYPE_2__ {void* end_time; } ;


 struct per_pid* find_create_pid (int) ;

__attribute__((used)) static void pid_exit(int pid, u64 timestamp)
{
 struct per_pid *p;
 p = find_create_pid(pid);
 p->end_time = timestamp;
 if (p->current)
  p->current->end_time = timestamp;
}
