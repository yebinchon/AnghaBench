
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int ref_count; } ;



void pevent_ref(struct pevent *pevent)
{
 pevent->ref_count++;
}
