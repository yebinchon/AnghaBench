
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ follow_fork_mode_child ;
 scalar_t__ follow_fork_mode_string ;
 int target_follow_fork (int) ;

__attribute__((used)) static int
follow_fork (void)
{
  int follow_child = (follow_fork_mode_string == follow_fork_mode_child);

  return target_follow_fork (follow_child);
}
