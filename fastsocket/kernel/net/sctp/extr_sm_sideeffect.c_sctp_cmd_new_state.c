
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_state_change ) (struct sock*) ;int sk_shutdown; int sk_state; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {size_t state; int wait; int rto_initial; int * timeouts; TYPE_1__ base; } ;
typedef size_t sctp_state_t ;
typedef int sctp_cmd_seq_t ;


 int CLOSED ;
 int COOKIE_WAIT ;
 int ESTABLISHED ;
 int RCV_SHUTDOWN ;
 int SCTP_DEBUG_PRINTK (char*,struct sctp_association*,int ) ;
 size_t SCTP_EVENT_TIMEOUT_T1_COOKIE ;
 size_t SCTP_EVENT_TIMEOUT_T1_INIT ;
 int SCTP_SS_ESTABLISHED ;
 int SHUTDOWN_RECEIVED ;
 int TCP ;
 int UDP ;
 scalar_t__ sctp_sstate (struct sock*,int ) ;
 scalar_t__ sctp_state (struct sctp_association*,int ) ;
 int * sctp_state_tbl ;
 scalar_t__ sctp_style (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void sctp_cmd_new_state(sctp_cmd_seq_t *cmds,
          struct sctp_association *asoc,
          sctp_state_t state)
{
 struct sock *sk = asoc->base.sk;

 asoc->state = state;

 SCTP_DEBUG_PRINTK("sctp_cmd_new_state: asoc %p[%s]\n",
     asoc, sctp_state_tbl[state]);

 if (sctp_style(sk, TCP)) {



  if (sctp_state(asoc, ESTABLISHED) && sctp_sstate(sk, CLOSED))
   sk->sk_state = SCTP_SS_ESTABLISHED;


  if (sctp_state(asoc, SHUTDOWN_RECEIVED) &&
      sctp_sstate(sk, ESTABLISHED))
   sk->sk_shutdown |= RCV_SHUTDOWN;
 }

 if (sctp_state(asoc, COOKIE_WAIT)) {



  asoc->timeouts[SCTP_EVENT_TIMEOUT_T1_INIT] =
      asoc->rto_initial;
  asoc->timeouts[SCTP_EVENT_TIMEOUT_T1_COOKIE] =
      asoc->rto_initial;
 }

 if (sctp_state(asoc, ESTABLISHED) ||
     sctp_state(asoc, CLOSED) ||
     sctp_state(asoc, SHUTDOWN_RECEIVED)) {



  if (waitqueue_active(&asoc->wait))
   wake_up_interruptible(&asoc->wait);







  if (!sctp_style(sk, UDP))
   sk->sk_state_change(sk);
 }
}
