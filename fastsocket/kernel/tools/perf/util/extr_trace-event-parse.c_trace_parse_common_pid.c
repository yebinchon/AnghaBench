
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent_record {void* data; } ;
struct pevent {int dummy; } ;


 int pevent_data_pid (struct pevent*,struct pevent_record*) ;

int trace_parse_common_pid(struct pevent *pevent, void *data)
{
 struct pevent_record record;

 record.data = data;
 return pevent_data_pid(pevent, &record);
}
