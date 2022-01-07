
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int period; int nr_events; } ;
struct hist_entry {TYPE_1__ stat; } ;



__attribute__((used)) static void hist_entry__decay(struct hist_entry *he)
{
 he->stat.period = (he->stat.period * 7) / 8;
 he->stat.nr_events = (he->stat.nr_events * 7) / 8;
}
