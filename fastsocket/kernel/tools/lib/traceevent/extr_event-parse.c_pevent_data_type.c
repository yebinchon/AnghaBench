
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent_record {int data; } ;
struct pevent {int dummy; } ;


 int trace_parse_common_type (struct pevent*,int ) ;

int pevent_data_type(struct pevent *pevent, struct pevent_record *rec)
{
 return trace_parse_common_type(pevent, rec->data);
}
