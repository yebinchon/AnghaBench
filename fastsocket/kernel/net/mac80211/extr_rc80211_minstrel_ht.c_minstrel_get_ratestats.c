
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct minstrel_rate_stats {int dummy; } ;
struct minstrel_ht_sta {TYPE_1__* groups; } ;
struct TYPE_2__ {struct minstrel_rate_stats* rates; } ;


 int MCS_GROUP_RATES ;

__attribute__((used)) static inline struct minstrel_rate_stats *
minstrel_get_ratestats(struct minstrel_ht_sta *mi, int index)
{
 return &mi->groups[index / MCS_GROUP_RATES].rates[index % MCS_GROUP_RATES];
}
