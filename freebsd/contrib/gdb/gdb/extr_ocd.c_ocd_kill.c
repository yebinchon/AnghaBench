
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kill_kludge ;
 int target_mourn_inferior () ;

void
ocd_kill (void)
{


  if (kill_kludge)
    {
      kill_kludge = 0;
      target_mourn_inferior ();
      return;
    }



  target_mourn_inferior ();
}
