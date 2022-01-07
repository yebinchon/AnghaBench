
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_call {int fields; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static int probe_event_raw_init(struct ftrace_event_call *event_call)
{
 INIT_LIST_HEAD(&event_call->fields);

 return 0;
}
