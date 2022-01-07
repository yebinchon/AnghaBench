
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent_record {int data; } ;
struct pevent {int dummy; } ;


 int parse_common_pid (struct pevent*,int ) ;

int pevent_data_pid(struct pevent *pevent, struct pevent_record *rec)
{
 return parse_common_pid(pevent, rec->data);
}
