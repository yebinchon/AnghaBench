
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sig; } ;
struct TYPE_5__ {TYPE_1__ value; int kind; } ;
struct TYPE_6__ {int suppress; TYPE_2__ status; } ;
struct inf {int stopped; TYPE_3__ wait; } ;
typedef int mach_port_t ;
typedef scalar_t__ error_t ;


 scalar_t__ EBUSY ;
 int TARGET_SIGNAL_0 ;
 int TARGET_WAITKIND_STOPPED ;
 int safe_strerror (scalar_t__) ;
 struct inf* waiting_inf ;
 int warning (char*,int ) ;

error_t
S_msg_sig_post_untraced_reply (mach_port_t reply, error_t err)
{
  struct inf *inf = waiting_inf;

  if (err == EBUSY)





    {
      inf->wait.status.kind = TARGET_WAITKIND_STOPPED;
      inf->wait.status.value.sig = TARGET_SIGNAL_0;
    }
  else if (err)
    warning ("Signal delivery failed: %s", safe_strerror (err));

  if (err)




    inf->stopped = 1;
  else
    inf->wait.suppress = 1;

  return 0;
}
