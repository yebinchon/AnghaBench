
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;


 int pevent_free (struct pevent*) ;

void pevent_unref(struct pevent *pevent)
{
 pevent_free(pevent);
}
