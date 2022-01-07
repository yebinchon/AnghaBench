
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct TYPE_2__ {int sk; } ;
struct pep_sock {TYPE_1__ pn_sk; int hlist; struct sock* listener; } ;


 int TCPF_CLOSE ;
 int TCPF_LISTEN ;
 scalar_t__ hlist_empty (int *) ;
 int lock_sock (struct sock*) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pn_sock_unhash (int *) ;
 int release_sock (struct sock*) ;
 int sk_del_node_init (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void pep_sock_unhash(struct sock *sk)
{
 struct pep_sock *pn = pep_sk(sk);
 struct sock *skparent = ((void*)0);

 lock_sock(sk);
 if ((1 << sk->sk_state) & ~(TCPF_CLOSE|TCPF_LISTEN)) {
  skparent = pn->listener;
  sk_del_node_init(sk);
  release_sock(sk);

  sk = skparent;
  pn = pep_sk(skparent);
  lock_sock(sk);
 }


 if (hlist_empty(&pn->hlist))
  pn_sock_unhash(&pn->pn_sk.sk);
 release_sock(sk);

 if (skparent)
  sock_put(skparent);
}
