
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int tc_magic_parent ;
typedef int tc_magic_child ;
struct TYPE_2__ {int * child_channel; int * parent_channel; } ;


 int RUNNING ;
 size_t SEM_LISTEN ;
 size_t SEM_TALK ;
 int TT_VERSION ;
 int add_thread (int ) ;
 int clear_thread_info () ;
 int close (int ) ;
 int pid_to_ptid (int) ;
 int process_state ;
 int read (int ,int *,int) ;
 int require_notification_of_exec_events (int) ;
 TYPE_1__ startup_semaphore ;
 int write (int ,int *,int) ;

void
child_acknowledge_created_inferior (int pid)
{





  uint64_t tc_magic_parent = TT_VERSION;
  uint64_t tc_magic_child = 0;


  read (startup_semaphore.child_channel[SEM_LISTEN],
 &tc_magic_child,
 sizeof (tc_magic_child));




  clear_thread_info ();
  add_thread (pid_to_ptid (pid));



  require_notification_of_exec_events (pid);



  process_state = RUNNING;


  write (startup_semaphore.parent_channel[SEM_TALK],
  &tc_magic_parent,
  sizeof (tc_magic_parent));


  (void) close (startup_semaphore.parent_channel[SEM_LISTEN]);
  (void) close (startup_semaphore.parent_channel[SEM_TALK]);
  (void) close (startup_semaphore.child_channel[SEM_LISTEN]);
  (void) close (startup_semaphore.child_channel[SEM_TALK]);
}
