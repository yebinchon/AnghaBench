
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {void (* sk_data_ready ) (struct sock*,int) ;int sk_callback_lock; struct o2net_sock_container* sk_user_data; } ;
struct o2net_sock_container {void (* sc_data_ready ) (struct sock*,int) ;int sc_rx_work; int sc_tv_data_ready; } ;


 int do_gettimeofday (int *) ;
 int o2net_sc_queue_work (struct o2net_sock_container*,int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sclog (struct o2net_sock_container*,char*) ;

__attribute__((used)) static void o2net_data_ready(struct sock *sk, int bytes)
{
 void (*ready)(struct sock *sk, int bytes);

 read_lock(&sk->sk_callback_lock);
 if (sk->sk_user_data) {
  struct o2net_sock_container *sc = sk->sk_user_data;
  sclog(sc, "data_ready hit\n");
  do_gettimeofday(&sc->sc_tv_data_ready);
  o2net_sc_queue_work(sc, &sc->sc_rx_work);
  ready = sc->sc_data_ready;
 } else {
  ready = sk->sk_data_ready;
 }
 read_unlock(&sk->sk_callback_lock);

 ready(sk, bytes);
}
