
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ftrace_set_clr_event (int *,char const*,char const*,int) ;

int trace_set_clr_event(const char *system, const char *event, int set)
{
 return __ftrace_set_clr_event(((void*)0), system, event, set);
}
