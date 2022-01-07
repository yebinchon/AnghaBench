
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double period; } ;
struct hist_entry {TYPE_1__ stat; } ;


 struct hist_entry* hist_entry__next_pair (struct hist_entry*) ;
 int scnprintf (char*,size_t,char*,double,double) ;

__attribute__((used)) static int formula_ratio(struct hist_entry *he, char *buf, size_t size)
{
 struct hist_entry *pair = hist_entry__next_pair(he);
 double new_period = he->stat.period;
 double old_period = pair ? pair->stat.period : 0;

 if (!pair)
  return -1;

 return scnprintf(buf, size, "%.0F / %.0F", new_period, old_period);
}
