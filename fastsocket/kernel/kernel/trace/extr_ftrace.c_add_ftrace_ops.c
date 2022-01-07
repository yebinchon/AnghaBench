
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_ops {struct ftrace_ops* next; } ;


 int rcu_assign_pointer (struct ftrace_ops*,struct ftrace_ops*) ;

__attribute__((used)) static void add_ftrace_ops(struct ftrace_ops **list, struct ftrace_ops *ops)
{
 ops->next = *list;






 rcu_assign_pointer(*list, ops);
}
