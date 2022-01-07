
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct pt_regs {int dummy; } ;


 int ftrace_trace_stack_regs (struct ring_buffer*,unsigned long,int ,int,struct pt_regs*) ;
 int ftrace_trace_userstack (struct ring_buffer*,unsigned long,int) ;
 int ring_buffer_unlock_commit (struct ring_buffer*,struct ring_buffer_event*) ;

void trace_nowake_buffer_unlock_commit_regs(struct ring_buffer *buffer,
         struct ring_buffer_event *event,
         unsigned long flags, int pc,
         struct pt_regs *regs)
{
 ring_buffer_unlock_commit(buffer, event);

 ftrace_trace_stack_regs(buffer, flags, 0, pc, regs);
 ftrace_trace_userstack(buffer, flags, pc);
}
