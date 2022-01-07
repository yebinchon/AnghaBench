
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;
typedef enum freezer_state { ____Placeholder_freezer_state } freezer_state ;


 size_t CGROUP_FROZEN ;
 size_t CGROUP_THAWED ;
 int EINVAL ;
 int ENODEV ;
 int cgroup_lock_live_group (struct cgroup*) ;
 int cgroup_unlock () ;
 int freezer_change_state (struct cgroup*,int) ;
 int * freezer_state_strs ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int freezer_write(struct cgroup *cgroup,
    struct cftype *cft,
    const char *buffer)
{
 int retval;
 enum freezer_state goal_state;

 if (strcmp(buffer, freezer_state_strs[CGROUP_THAWED]) == 0)
  goal_state = CGROUP_THAWED;
 else if (strcmp(buffer, freezer_state_strs[CGROUP_FROZEN]) == 0)
  goal_state = CGROUP_FROZEN;
 else
  return -EINVAL;

 if (!cgroup_lock_live_group(cgroup))
  return -ENODEV;
 retval = freezer_change_state(cgroup, goal_state);
 cgroup_unlock();
 return retval;
}
