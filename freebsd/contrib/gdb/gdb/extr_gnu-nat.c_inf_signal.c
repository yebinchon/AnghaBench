
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct exc_state {int subcode; int code; int exception; int reply; int handler; } ;
struct TYPE_5__ {int sig; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_1__ value; } ;
struct inf_wait {TYPE_3__* thread; struct exc_state exc; TYPE_2__ status; } ;
struct inf {scalar_t__ stopped; int event_port; TYPE_4__* task; struct inf_wait wait; } ;
typedef scalar_t__ error_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_8__ {int port; } ;
struct TYPE_7__ {int port; int aborted; } ;


 scalar_t__ EIEIO ;
 scalar_t__ INF_MSGPORT_RPC (struct inf*,int ) ;
 scalar_t__ INF_RESUME_MSGPORT_RPC (struct inf*,int ) ;
 int MACH_MSG_TYPE_MAKE_SEND_ONCE ;
 int MACH_MSG_TYPE_MOVE_SEND_ONCE ;
 int NAME ;
 scalar_t__ TARGET_WAITKIND_STOPPED ;
 int _NSIG ;
 int error (char*,int ) ;
 scalar_t__ exception_raise_request (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int inf_debug (struct inf*,char*,int ,...) ;
 int msg_sig_post_untraced (int ,int,int ,int ) ;
 int msg_sig_post_untraced_request (int ,int ,int ,int,int ,int ) ;
 int msgport ;
 int refport ;
 int safe_strerror (scalar_t__) ;
 int target_signal_to_host (int) ;
 int warning (char*,int ,...) ;

void
inf_signal (struct inf *inf, enum target_signal sig)
{
  error_t err = 0;
  int host_sig = target_signal_to_host (sig);



  if (host_sig >= _NSIG)



    {
      struct inf_wait *w = &inf->wait;
      if (w->status.kind == TARGET_WAITKIND_STOPPED
   && w->status.value.sig == sig
   && w->thread && !w->thread->aborted)





 {
   struct exc_state *e = &w->exc;
   inf_debug (inf, "passing through exception:"
       " task = %d, thread = %d, exc = %d"
       ", code = %d, subcode = %d",
       w->thread->port, inf->task->port,
       e->exception, e->code, e->subcode);
   err =
     exception_raise_request (e->handler,
         e->reply, MACH_MSG_TYPE_MOVE_SEND_ONCE,
         w->thread->port, inf->task->port,
         e->exception, e->code, e->subcode);
 }
      else
 error ("Can't forward spontaneous exception (%s).", target_signal_to_name (sig));
    }
  else

  if (inf->stopped)


    {
      inf_debug (inf, "sending %s to stopped process", target_signal_to_name (sig));
      err =
 INF_MSGPORT_RPC (inf,
    msg_sig_post_untraced_request (msgport,
       inf->event_port,
            MACH_MSG_TYPE_MAKE_SEND_ONCE,
       host_sig, 0,
       refport));
      if (!err)




 inf->stopped = 0;
    }
  else





    {
      inf_debug (inf, "sending %s to unstopped process"
   " (so resuming signal thread)", target_signal_to_name (sig));
      err =
 INF_RESUME_MSGPORT_RPC (inf,
    msg_sig_post_untraced (msgport, host_sig,
             0, refport));
    }

  if (err == EIEIO)

    warning ("Can't deliver signal %s: No signal thread.", target_signal_to_name (sig));
  else if (err)
    warning ("Delivering signal %s: %s", target_signal_to_name (sig), safe_strerror (err));


}
