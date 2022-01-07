
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {struct lwp_info* next; int signalled; int stopped; } ;


 struct lwp_info* lwp_list ;
 int resume_callback (struct lwp_info*,int *) ;
 int resume_set_callback (struct lwp_info*,int *) ;
 int stop_callback (struct lwp_info*,int *) ;
 int stop_wait_callback (struct lwp_info*,int *) ;

__attribute__((used)) static int
stop_and_resume_callback (struct lwp_info *lp, void *data)
{
  struct lwp_info *ptr;

  if (!lp->stopped && !lp->signalled)
    {
      stop_callback (lp, ((void*)0));
      stop_wait_callback (lp, ((void*)0));

      for (ptr = lwp_list; ptr; ptr = ptr->next)
 if (lp == ptr)
   {
     resume_callback (lp, ((void*)0));
     resume_set_callback (lp, ((void*)0));
   }
    }
  return 0;
}
