
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {int ptid; struct lwp_info* next; } ;
typedef int ptid_t ;


 int GET_LWP (int ) ;
 int GET_PID (int ) ;
 scalar_t__ is_lwp (int ) ;
 struct lwp_info* lwp_list ;

__attribute__((used)) static struct lwp_info *
find_lwp_pid (ptid_t ptid)
{
  struct lwp_info *lp;
  int lwp;

  if (is_lwp (ptid))
    lwp = GET_LWP (ptid);
  else
    lwp = GET_PID (ptid);

  for (lp = lwp_list; lp; lp = lp->next)
    if (lwp == GET_LWP (lp->ptid))
      return lp;

  return ((void*)0);
}
