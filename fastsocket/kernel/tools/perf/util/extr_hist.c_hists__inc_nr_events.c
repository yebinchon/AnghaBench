
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int * nr_events; } ;
struct hists {TYPE_1__ stats; } ;



void hists__inc_nr_events(struct hists *hists, u32 type)
{
 ++hists->stats.nr_events[0];
 ++hists->stats.nr_events[type];
}
