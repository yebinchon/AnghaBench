
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array_cpu {int dummy; } ;
struct trace_array {int dummy; } ;
struct pt_regs {int ip; } ;
struct backtrace_info {int pos; struct trace_array_cpu* data; struct trace_array* tr; } ;


 int __trace_special (struct trace_array*,struct trace_array_cpu*,int,int ,int ) ;
 int backtrace_ops ;
 int dump_trace (int *,struct pt_regs*,void*,int *,struct backtrace_info*) ;

__attribute__((used)) static int
trace_kernel(struct pt_regs *regs, struct trace_array *tr,
      struct trace_array_cpu *data)
{
 struct backtrace_info info;
 char *stack;

 info.tr = tr;
 info.data = data;
 info.pos = 1;

 __trace_special(info.tr, info.data, 1, regs->ip, 0);
 stack = ((char *)regs + sizeof(struct pt_regs));
 dump_trace(((void*)0), regs, (void *)stack, &backtrace_ops, &info);

 return info.pos;
}
