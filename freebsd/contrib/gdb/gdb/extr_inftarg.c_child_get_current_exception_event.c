
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_event_record {int dummy; } ;



struct exception_event_record *
child_get_current_exception_event (void)
{
  return (struct exception_event_record *) ((void*)0);
}
