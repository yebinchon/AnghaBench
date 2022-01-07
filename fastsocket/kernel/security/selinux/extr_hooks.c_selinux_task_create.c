
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROCESS__FORK ;
 int current ;
 int current_has_perm (int ,int ) ;

__attribute__((used)) static int selinux_task_create(unsigned long clone_flags)
{
 return current_has_perm(current, PROCESS__FORK);
}
