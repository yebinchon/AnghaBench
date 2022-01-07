
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_address_t ;
typedef TYPE_1__* thread_basic_info_t ;
struct TYPE_3__ {int suspend_count; } ;
typedef TYPE_1__ thread_basic_info_data_t ;
struct proc {int sc; int port; } ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ error_t ;


 int THREAD_BASIC_INFO ;
 int THREAD_BASIC_INFO_COUNT ;
 struct proc* cur_thread () ;
 int error (char*,int ) ;
 int mach_task_self () ;
 int printf_unfiltered (char*,int ) ;
 int safe_strerror (scalar_t__) ;
 scalar_t__ thread_info (int ,int ,int*,int*) ;
 int vm_deallocate (int ,int ,int) ;

__attribute__((used)) static void
thread_takeover_sc_cmd (char *args, int from_tty)
{
  struct proc *thread = cur_thread ();
  thread_basic_info_data_t _info;
  thread_basic_info_t info = &_info;
  mach_msg_type_number_t info_len = THREAD_BASIC_INFO_COUNT;
  error_t err =
  thread_info (thread->port, THREAD_BASIC_INFO, (int *) &info, &info_len);
  if (err)
    error ("%s.", safe_strerror (err));
  thread->sc = info->suspend_count;
  if (from_tty)
    printf_unfiltered ("Suspend count was %d.\n", thread->sc);
  if (info != &_info)
    vm_deallocate (mach_task_self (), (vm_address_t) info,
     info_len * sizeof (int));
}
