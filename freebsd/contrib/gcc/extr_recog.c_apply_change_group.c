
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cancel_changes (int ) ;
 int confirm_change_group () ;
 scalar_t__ verify_changes (int ) ;

int
apply_change_group (void)
{
  if (verify_changes (0))
    {
      confirm_change_group ();
      return 1;
    }
  else
    {
      cancel_changes (0);
      return 0;
    }
}
