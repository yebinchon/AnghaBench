
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_group {int* duration; } ;


 int MCS_GROUP_RATES ;
 struct mcs_group* minstrel_mcs_groups ;

__attribute__((used)) static inline int
minstrel_get_duration(int index)
{
 const struct mcs_group *group = &minstrel_mcs_groups[index / MCS_GROUP_RATES];
 return group->duration[index % MCS_GROUP_RATES];
}
