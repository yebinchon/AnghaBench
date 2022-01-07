
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iterate_over_lwps (int ,int *) ;
 int kill_callback ;
 int kill_wait_callback ;
 int target_mourn_inferior () ;

__attribute__((used)) static void
lin_lwp_kill (void)
{

  iterate_over_lwps (kill_callback, ((void*)0));


  iterate_over_lwps (kill_wait_callback, ((void*)0));

  target_mourn_inferior ();
}
