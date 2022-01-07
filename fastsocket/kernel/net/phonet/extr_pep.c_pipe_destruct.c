
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;
struct pep_sock {int ctrlreq_queue; } ;


 struct pep_sock* pep_sk (struct sock*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void pipe_destruct(struct sock *sk)
{
 struct pep_sock *pn = pep_sk(sk);

 skb_queue_purge(&sk->sk_receive_queue);
 skb_queue_purge(&pn->ctrlreq_queue);
}
