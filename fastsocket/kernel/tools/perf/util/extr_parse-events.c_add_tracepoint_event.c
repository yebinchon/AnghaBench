
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int add_tracepoint (struct list_head**,int*,char*,char*) ;
 int add_tracepoint_multi_event (struct list_head**,int*,char*,char*) ;
 scalar_t__ strpbrk (char*,char*) ;

__attribute__((used)) static int add_tracepoint_event(struct list_head **list, int *idx,
    char *sys_name, char *evt_name)
{
 return strpbrk(evt_name, "*?") ?
        add_tracepoint_multi_event(list, idx, sys_name, evt_name) :
        add_tracepoint(list, idx, sys_name, evt_name);
}
