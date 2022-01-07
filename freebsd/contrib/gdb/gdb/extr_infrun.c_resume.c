
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cleanup {int dummy; } ;
typedef void* ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {int kind; } ;


 scalar_t__ CANNOT_STEP_BREAKPOINT ;
 scalar_t__ CANNOT_STEP_HW_WATCHPOINTS ;
 int DO_DEFERRED_STORES ;
 int QUIT ;
 void* RESUME_ALL ;
 int SKIP_PERMANENT_BREAKPOINT () ;
 int SOFTWARE_SINGLE_STEP (int,int) ;
 scalar_t__ SOFTWARE_SINGLE_STEP_P () ;


 void* TARGET_WAITKIND_SPURIOUS ;

 scalar_t__ breakpoint_here_p (int ) ;
 scalar_t__ breakpoints_inserted ;
 int discard_cleanups (struct cleanup*) ;
 int follow_fork () ;
 void* inferior_ptid ;
 struct cleanup* make_cleanup (int ,int ) ;
 TYPE_1__ pending_follow ;
 scalar_t__ permanent_breakpoint_here ;
 int read_pc () ;
 int remove_hw_watchpoints () ;
 int resume_cleanups ;
 scalar_t__ schedlock_on ;
 scalar_t__ schedlock_step ;
 scalar_t__ scheduler_mode ;
 int singlestep_breakpoints_inserted_p ;
 void* singlestep_ptid ;
 scalar_t__ stepping_past_singlestep_breakpoint ;
 int target_resume (void*,int,int) ;
 int target_terminal_inferior () ;

void
resume (int step, enum target_signal sig)
{
  int should_resume = 1;
  struct cleanup *old_cleanups = make_cleanup (resume_cleanups, 0);
  QUIT;
  if (CANNOT_STEP_HW_WATCHPOINTS && step && breakpoints_inserted)
    remove_hw_watchpoints ();






  if (breakpoint_here_p (read_pc ()) == permanent_breakpoint_here)
    SKIP_PERMANENT_BREAKPOINT ();

  if (SOFTWARE_SINGLE_STEP_P () && step)
    {

      SOFTWARE_SINGLE_STEP (sig, 1 );

      step = 0;


      singlestep_breakpoints_inserted_p = 1;
      singlestep_ptid = inferior_ptid;
    }
  switch (pending_follow.kind)
    {
    case 129:
    case 128:
      pending_follow.kind = TARGET_WAITKIND_SPURIOUS;
      if (follow_fork ())
 should_resume = 0;
      break;

    case 130:

      pending_follow.kind = TARGET_WAITKIND_SPURIOUS;
      break;

    default:
      break;
    }


  target_terminal_inferior ();

  if (should_resume)
    {
      ptid_t resume_ptid;

      resume_ptid = RESUME_ALL;

      if ((step || singlestep_breakpoints_inserted_p) &&
   (stepping_past_singlestep_breakpoint
    || (!breakpoints_inserted && breakpoint_here_p (read_pc ()))))
 {





   resume_ptid = inferior_ptid;
 }

      if ((scheduler_mode == schedlock_on) ||
   (scheduler_mode == schedlock_step &&
    (step || singlestep_breakpoints_inserted_p)))
 {

   resume_ptid = inferior_ptid;
 }

      if (CANNOT_STEP_BREAKPOINT)
 {



   if (step && breakpoints_inserted && breakpoint_here_p (read_pc ()))
     step = 0;
 }
      target_resume (resume_ptid, step, sig);
    }

  discard_cleanups (old_cleanups);
}
