
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bp_catch_fork ;
 int create_fork_vfork_event_catchpoint (int,char*,int ) ;

void
create_fork_event_catchpoint (int tempflag, char *cond_string)
{
  create_fork_vfork_event_catchpoint (tempflag, cond_string, bp_catch_fork);
}
