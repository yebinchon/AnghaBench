
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {void (* sk_user_data ) (struct sock*,int) ;void (* sk_data_ready ) (struct sock*,int) ;scalar_t__ sk_state; int sk_callback_lock; } ;


 scalar_t__ TCP_LISTEN ;
 int queue_work (int ,int *) ;
 int rds_tcp_listen_work ;
 int rds_wq ;
 int rdsdebug (char*,struct sock*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

void rds_tcp_listen_data_ready(struct sock *sk, int bytes)
{
 void (*ready)(struct sock *sk, int bytes);

 rdsdebug("listen data ready sk %p\n", sk);

 read_lock(&sk->sk_callback_lock);
 ready = sk->sk_user_data;
 if (!ready) {
  ready = sk->sk_data_ready;
  goto out;
 }







 if (sk->sk_state == TCP_LISTEN)
  queue_work(rds_wq, &rds_tcp_listen_work);

out:
 read_unlock(&sk->sk_callback_lock);
 ready(sk, bytes);
}
