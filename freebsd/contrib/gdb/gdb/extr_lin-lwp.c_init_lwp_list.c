
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {struct lwp_info* next; } ;


 struct lwp_info* lwp_list ;
 scalar_t__ num_lwps ;
 scalar_t__ threaded ;
 int xfree (struct lwp_info*) ;

__attribute__((used)) static void
init_lwp_list (void)
{
  struct lwp_info *lp, *lpnext;

  for (lp = lwp_list; lp; lp = lpnext)
    {
      lpnext = lp->next;
      xfree (lp);
    }

  lwp_list = ((void*)0);
  num_lwps = 0;
  threaded = 0;
}
