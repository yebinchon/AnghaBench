
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {void (* sk_user_data ) (struct sock*,int) ;void (* sk_data_ready ) (struct sock*,int) ;scalar_t__ sk_state; int sk_callback_lock; } ;


 int ML_TCP ;
 scalar_t__ TCP_LISTEN ;
 int mlog (int ,char*,int) ;
 int o2net_listen_work ;
 int o2net_wq ;
 int queue_work (int ,int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static void o2net_listen_data_ready(struct sock *sk, int bytes)
{
 void (*ready)(struct sock *sk, int bytes);

 read_lock(&sk->sk_callback_lock);
 ready = sk->sk_user_data;
 if (ready == ((void*)0)) {
  ready = sk->sk_data_ready;
  goto out;
 }





 if (sk->sk_state == TCP_LISTEN) {
  mlog(ML_TCP, "bytes: %d\n", bytes);
  queue_work(o2net_wq, &o2net_listen_work);
 }

out:
 read_unlock(&sk->sk_callback_lock);
 ready(sk, bytes);
}
