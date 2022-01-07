
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ftrace_event_call {int name; int system; } ;


 int TRACE_SYSTEM ;
 int seq_printf (struct seq_file*,char*,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int t_show(struct seq_file *m, void *v)
{
 struct ftrace_event_call *call = v;

 if (strcmp(call->system, TRACE_SYSTEM) != 0)
  seq_printf(m, "%s:", call->system);
 seq_printf(m, "%s\n", call->name);

 return 0;
}
