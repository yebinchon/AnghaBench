
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACCUMULATE_OUTGOING_ARGS ;
 int CLEANUP_CROSSJUMP ;
 int CLEANUP_EXPENSIVE ;
 int CLEANUP_UPDATE_LIFE ;
 int PROP_POSTRELOAD ;
 int cleanup_cfg (int) ;
 int combine_stack_adjustments () ;
 scalar_t__ flag_crossjumping ;
 int life_analysis (int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_stack_adjustments (void)
{
  life_analysis (PROP_POSTRELOAD);
  cleanup_cfg (CLEANUP_EXPENSIVE | CLEANUP_UPDATE_LIFE
               | (flag_crossjumping ? CLEANUP_CROSSJUMP : 0));






  if (!ACCUMULATE_OUTGOING_ARGS)

    combine_stack_adjustments ();
  return 0;
}
