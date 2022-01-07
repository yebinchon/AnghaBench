
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {scalar_t__ status; } ;


 scalar_t__ SIGTRAP ;
 scalar_t__ WIFSTOPPED (scalar_t__) ;
 scalar_t__ WSTOPSIG (scalar_t__) ;
 int gdb_assert (int ) ;

__attribute__((used)) static int
select_event_lwp_callback (struct lwp_info *lp, void *data)
{
  int *selector = data;

  gdb_assert (selector != ((void*)0));


  if (lp->status != 0
      && WIFSTOPPED (lp->status) && WSTOPSIG (lp->status) == SIGTRAP)
    if ((*selector)-- == 0)
      return 1;

  return 0;
}
