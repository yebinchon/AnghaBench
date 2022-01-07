
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent_record {int dummy; } ;
struct event_format {int pevent; } ;


 char* pevent_data_comm_from_pid (int ,int) ;
 int pevent_data_pid (int ,struct pevent_record*) ;

__attribute__((used)) static const char *
get_comm(struct event_format *event, struct pevent_record *record)
{
 const char *comm;
 int pid;

 pid = pevent_data_pid(event->pevent, record);
 comm = pevent_data_comm_from_pid(event->pevent, pid);
 return comm;
}
