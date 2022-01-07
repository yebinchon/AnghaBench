
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct syscall_metadata {struct ftrace_event_call* enter_event; } ;
struct TYPE_2__ {char* print_fmt; } ;
struct ftrace_event_call {TYPE_1__ fmt; struct syscall_metadata* data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __set_enter_print_fmt (struct syscall_metadata*,char*,int) ;
 char* kmalloc (int,int ) ;

int set_syscall_print_fmt(struct ftrace_event_call *call)
{
 char *print_fmt;
 int len;
 struct syscall_metadata *entry = call->data;

 if (entry->enter_event != call) {
  call->fmt.print_fmt = "\"0x%lx\", REC->ret";
  return 0;
 }


 len = __set_enter_print_fmt(entry, ((void*)0), 0);

 print_fmt = kmalloc(len + 1, GFP_KERNEL);
 if (!print_fmt)
  return -ENOMEM;


 __set_enter_print_fmt(entry, print_fmt, len + 1);
 call->fmt.print_fmt = print_fmt;

 return 0;
}
