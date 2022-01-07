
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_ops {struct ftrace_ops* next; int (* func ) (unsigned long,unsigned long) ;} ;


 struct ftrace_ops* ftrace_global_list ;
 struct ftrace_ops ftrace_list_end ;
 int read_barrier_depends () ;
 int stub1 (unsigned long,unsigned long) ;

__attribute__((used)) static void ftrace_global_list_func(unsigned long ip,
        unsigned long parent_ip)
{
 struct ftrace_ops *op = ftrace_global_list;


 read_barrier_depends();

 while (op != &ftrace_list_end) {

  read_barrier_depends();
  op->func(ip, parent_ip);
  op = op->next;
 };
}
