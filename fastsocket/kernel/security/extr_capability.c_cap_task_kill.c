
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct siginfo {int dummy; } ;



__attribute__((used)) static int cap_task_kill(struct task_struct *p, struct siginfo *info,
    int sig, u32 secid)
{
 return 0;
}
