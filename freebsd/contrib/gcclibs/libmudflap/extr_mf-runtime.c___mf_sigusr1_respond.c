
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sigusr1_report; } ;


 int SIGUSR1 ;
 int SIG_DFL ;
 scalar_t__ __mf_get_state () ;
 TYPE_1__ __mf_opts ;
 scalar_t__ __mf_sigusr1_handled ;
 int __mf_sigusr1_handler ;
 scalar_t__ __mf_sigusr1_received ;
 int __mfu_report () ;
 int assert (int) ;
 scalar_t__ reentrant ;
 int signal (int ,int ) ;

void
__mf_sigusr1_respond ()
{
  static int handler_installed;
  if (__mf_sigusr1_received > __mf_sigusr1_handled)
    {
      __mf_sigusr1_handled ++;
      assert (__mf_get_state () == reentrant);
      __mfu_report ();
      handler_installed = 0;
    }
}
