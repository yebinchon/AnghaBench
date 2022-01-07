
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {void (* sk_state_change ) (struct sock*) ;int sk_state; int sk_callback_lock; struct o2net_sock_container* sk_user_data; } ;
struct o2net_sock_container {void (* sc_state_change ) (struct sock*) ;int sc_shutdown_work; int sc_connect_work; } ;





 int o2net_sc_queue_work (struct o2net_sock_container*,int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sclog (struct o2net_sock_container*,char*,int) ;

__attribute__((used)) static void o2net_state_change(struct sock *sk)
{
 void (*state_change)(struct sock *sk);
 struct o2net_sock_container *sc;

 read_lock(&sk->sk_callback_lock);
 sc = sk->sk_user_data;
 if (sc == ((void*)0)) {
  state_change = sk->sk_state_change;
  goto out;
 }

 sclog(sc, "state_change to %d\n", sk->sk_state);

 state_change = sc->sc_state_change;

 switch(sk->sk_state) {

  case 128:
  case 129:
   break;
  case 130:
   o2net_sc_queue_work(sc, &sc->sc_connect_work);
   break;
  default:
   o2net_sc_queue_work(sc, &sc->sc_shutdown_work);
   break;
 }
out:
 read_unlock(&sk->sk_callback_lock);
 state_change(sk);
}
