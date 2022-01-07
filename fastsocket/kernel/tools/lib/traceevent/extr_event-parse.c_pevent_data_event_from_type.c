
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;
struct event_format {int dummy; } ;


 struct event_format* pevent_find_event (struct pevent*,int) ;

struct event_format *pevent_data_event_from_type(struct pevent *pevent, int type)
{
 return pevent_find_event(pevent, type);
}
