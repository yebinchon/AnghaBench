
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;


 int pevent_parse_event (struct pevent*,char*,unsigned long,char*) ;

int parse_ftrace_file(struct pevent *pevent, char *buf, unsigned long size)
{
 return pevent_parse_event(pevent, buf, size, "ftrace");
}
