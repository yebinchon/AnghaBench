
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_ops {struct ftrace_ops* next; } ;


 struct ftrace_ops ftrace_list_end ;

__attribute__((used)) static int remove_ftrace_ops(struct ftrace_ops **list, struct ftrace_ops *ops)
{
 struct ftrace_ops **p;





 if (*list == ops && ops->next == &ftrace_list_end) {
  *list = &ftrace_list_end;
  return 0;
 }

 for (p = list; *p != &ftrace_list_end; p = &(*p)->next)
  if (*p == ops)
   break;

 if (*p != ops)
  return -1;

 *p = (*p)->next;
 return 0;
}
