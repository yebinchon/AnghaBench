
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cgroup {int dummy; } ;


 int security_task_setscheduler (struct task_struct*,int ,int *) ;

__attribute__((used)) static int cpuset_can_attach_task(struct cgroup *cgrp, struct task_struct *task)
{
 return security_task_setscheduler(task, 0, ((void*)0));
}
