
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sig; } ;
struct target_waitstatus {scalar_t__ kind; TYPE_1__ value; } ;
typedef int ptid_t ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ TARGET_SIGNAL_INT ;
 scalar_t__ TARGET_SIGNAL_TRAP ;
 scalar_t__ TARGET_WAITKIND_STOPPED ;
 scalar_t__ breakpoint_here_p (scalar_t__) ;
 int flush_cached_frames () ;
 int get_current_frame () ;
 int get_last_target_status (int *,struct target_waitstatus*) ;
 int inferior_ptid ;
 int minus_one_ptid ;
 int ptid_equal (int ,int ) ;
 scalar_t__ read_pc () ;
 scalar_t__ read_pc_pid (int ) ;
 int registers_changed () ;
 int select_frame (int ) ;
 scalar_t__ stop_pc ;

__attribute__((used)) static int
prepare_to_proceed (void)
{
  ptid_t wait_ptid;
  struct target_waitstatus wait_status;


  get_last_target_status (&wait_ptid, &wait_status);



  if (wait_status.kind != TARGET_WAITKIND_STOPPED
      || (wait_status.value.sig != TARGET_SIGNAL_TRAP &&
          wait_status.value.sig != TARGET_SIGNAL_INT))
    {
      return 0;
    }

  if (!ptid_equal (wait_ptid, minus_one_ptid)
      && !ptid_equal (inferior_ptid, wait_ptid))
    {

      CORE_ADDR wait_pc = read_pc_pid (wait_ptid);

      if (wait_pc != read_pc ())
 {

   inferior_ptid = wait_ptid;



   flush_cached_frames ();
   registers_changed ();
   stop_pc = wait_pc;
   select_frame (get_current_frame ());
 }




 if (breakpoint_here_p (wait_pc))
    return 1;
    }

  return 0;

}
