
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int ref_count; } ;


 struct pevent* calloc (int,int) ;

struct pevent *pevent_alloc(void)
{
 struct pevent *pevent = calloc(1, sizeof(*pevent));

 if (pevent)
  pevent->ref_count = 1;

 return pevent;
}
