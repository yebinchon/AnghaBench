
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {scalar_t__ state; struct sock* sk; } ;
struct sockaddr_rose {scalar_t__ srose_family; int srose_ndigis; int srose_addr; int srose_digi; int srose_call; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_sleep; } ;
struct rose_sock {int source_ndigis; int dest_ndigis; TYPE_2__* neighbour; int state; int * dest_digis; scalar_t__ lci; scalar_t__ rand; int dest_call; int dest_addr; struct net_device* device; int source_call; int source_addr; } ;
struct net_device {int dev_addr; } ;
struct full_sockaddr_rose {int * srose_digis; } ;
struct TYPE_5__ {int call; } ;
typedef TYPE_1__ ax25_uid_assoc ;
struct TYPE_6__ {int use; } ;


 scalar_t__ AF_ROSE ;
 int DEFINE_WAIT (int ) ;
 int ECONNREFUSED ;
 int EINPROGRESS ;
 int EINVAL ;
 int EISCONN ;
 int ENETUNREACH ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int ROSE_ADDR_LEN ;
 int ROSE_CALL_REQUEST ;
 int ROSE_MAX_DIGIS ;
 int ROSE_STATE_1 ;
 int SOCK_ZAPPED ;
 void* SS_CONNECTED ;
 scalar_t__ SS_CONNECTING ;
 void* SS_UNCONNECTED ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_ESTABLISHED ;
 scalar_t__ TCP_SYN_SENT ;
 TYPE_1__* ax25_findbyuid (int ) ;
 int ax25_uid_put (TYPE_1__*) ;
 int current ;
 int current_euid () ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int memcpy (int *,int ,int ) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 struct net_device* rose_dev_first () ;
 void* rose_get_neigh (int *,unsigned char*,unsigned char*,int ) ;
 int rose_insert_socket (struct sock*) ;
 scalar_t__ rose_new_lci (TYPE_2__*) ;
 struct rose_sock* rose_sk (struct sock*) ;
 int rose_start_heartbeat (struct sock*) ;
 int rose_start_t1timer (struct sock*) ;
 int rose_write_internal (struct sock*,int ) ;
 int schedule () ;
 int signal_pending (int ) ;
 int sock_error (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_reset_flag (struct sock*,int ) ;
 int wait ;

__attribute__((used)) static int rose_connect(struct socket *sock, struct sockaddr *uaddr, int addr_len, int flags)
{
 struct sock *sk = sock->sk;
 struct rose_sock *rose = rose_sk(sk);
 struct sockaddr_rose *addr = (struct sockaddr_rose *)uaddr;
 unsigned char cause, diagnostic;
 struct net_device *dev;
 ax25_uid_assoc *user;
 int n, err = 0;

 if (addr_len != sizeof(struct sockaddr_rose) && addr_len != sizeof(struct full_sockaddr_rose))
  return -EINVAL;

 if (addr->srose_family != AF_ROSE)
  return -EINVAL;

 if (addr_len == sizeof(struct sockaddr_rose) && addr->srose_ndigis > 1)
  return -EINVAL;

 if (addr->srose_ndigis > ROSE_MAX_DIGIS)
  return -EINVAL;


 if ((rose->source_ndigis + addr->srose_ndigis) > ROSE_MAX_DIGIS)
  return -EINVAL;

 lock_sock(sk);

 if (sk->sk_state == TCP_ESTABLISHED && sock->state == SS_CONNECTING) {

  sock->state = SS_CONNECTED;
  goto out_release;
 }

 if (sk->sk_state == TCP_CLOSE && sock->state == SS_CONNECTING) {
  sock->state = SS_UNCONNECTED;
  err = -ECONNREFUSED;
  goto out_release;
 }

 if (sk->sk_state == TCP_ESTABLISHED) {

  err = -EISCONN;
  goto out_release;
 }

 sk->sk_state = TCP_CLOSE;
 sock->state = SS_UNCONNECTED;

 rose->neighbour = rose_get_neigh(&addr->srose_addr, &cause,
      &diagnostic, 0);
 if (!rose->neighbour) {
  err = -ENETUNREACH;
  goto out_release;
 }

 rose->lci = rose_new_lci(rose->neighbour);
 if (!rose->lci) {
  err = -ENETUNREACH;
  goto out_release;
 }

 if (sock_flag(sk, SOCK_ZAPPED)) {
  sock_reset_flag(sk, SOCK_ZAPPED);

  if ((dev = rose_dev_first()) == ((void*)0)) {
   err = -ENETUNREACH;
   goto out_release;
  }

  user = ax25_findbyuid(current_euid());
  if (!user) {
   err = -EINVAL;
   goto out_release;
  }

  memcpy(&rose->source_addr, dev->dev_addr, ROSE_ADDR_LEN);
  rose->source_call = user->call;
  rose->device = dev;
  ax25_uid_put(user);

  rose_insert_socket(sk);
 }
rose_try_next_neigh:
 rose->dest_addr = addr->srose_addr;
 rose->dest_call = addr->srose_call;
 rose->rand = ((long)rose & 0xFFFF) + rose->lci;
 rose->dest_ndigis = addr->srose_ndigis;

 if (addr_len == sizeof(struct full_sockaddr_rose)) {
  struct full_sockaddr_rose *full_addr = (struct full_sockaddr_rose *)uaddr;
  for (n = 0 ; n < addr->srose_ndigis ; n++)
   rose->dest_digis[n] = full_addr->srose_digis[n];
 } else {
  if (rose->dest_ndigis == 1) {
   rose->dest_digis[0] = addr->srose_digi;
  }
 }


 sock->state = SS_CONNECTING;
 sk->sk_state = TCP_SYN_SENT;

 rose->state = ROSE_STATE_1;

 rose->neighbour->use++;

 rose_write_internal(sk, ROSE_CALL_REQUEST);
 rose_start_heartbeat(sk);
 rose_start_t1timer(sk);


 if (sk->sk_state != TCP_ESTABLISHED && (flags & O_NONBLOCK)) {
  err = -EINPROGRESS;
  goto out_release;
 }





 if (sk->sk_state == TCP_SYN_SENT) {
  DEFINE_WAIT(wait);

  for (;;) {
   prepare_to_wait(sk->sk_sleep, &wait,
     TASK_INTERRUPTIBLE);
   if (sk->sk_state != TCP_SYN_SENT)
    break;
   if (!signal_pending(current)) {
    release_sock(sk);
    schedule();
    lock_sock(sk);
    continue;
   }
   err = -ERESTARTSYS;
   break;
  }
  finish_wait(sk->sk_sleep, &wait);

  if (err)
   goto out_release;
 }

 if (sk->sk_state != TCP_ESTABLISHED) {

  rose->neighbour = rose_get_neigh(&addr->srose_addr, &cause, &diagnostic, 0);
  if (rose->neighbour)
   goto rose_try_next_neigh;


  sock->state = SS_UNCONNECTED;
  err = sock_error(sk);
  goto out_release;
 }

 sock->state = SS_CONNECTED;

out_release:
 release_sock(sk);

 return err;
}
