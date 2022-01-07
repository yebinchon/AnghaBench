
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_format {int pevent; } ;


 unsigned long long pevent_read_number (int ,void*,int) ;

unsigned long long read_size(struct event_format *event, void *ptr, int size)
{
 return pevent_read_number(event->pevent, ptr, size);
}
