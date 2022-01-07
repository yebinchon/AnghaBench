
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct minstrel_ht_sta {TYPE_1__* groups; } ;
struct TYPE_4__ {scalar_t__ streams; } ;
struct TYPE_3__ {unsigned int max_tp_rate; unsigned int max_tp_rate2; int supported; } ;


 unsigned int MCS_GROUP_RATES ;
 TYPE_2__* minstrel_mcs_groups ;

__attribute__((used)) static void
minstrel_downgrade_rate(struct minstrel_ht_sta *mi, unsigned int *idx,
   bool primary)
{
 int group, orig_group;

 orig_group = group = *idx / MCS_GROUP_RATES;
 while (group > 0) {
  group--;

  if (!mi->groups[group].supported)
   continue;

  if (minstrel_mcs_groups[group].streams >
      minstrel_mcs_groups[orig_group].streams)
   continue;

  if (primary)
   *idx = mi->groups[group].max_tp_rate;
  else
   *idx = mi->groups[group].max_tp_rate2;
  break;
 }
}
