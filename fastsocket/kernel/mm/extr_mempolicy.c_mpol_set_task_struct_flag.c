
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int mpol_fix_fork_child_flag (int ) ;

__attribute__((used)) static void mpol_set_task_struct_flag(void)
{
 mpol_fix_fork_child_flag(current);
}
