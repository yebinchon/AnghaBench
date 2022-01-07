
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct pep_sock {int pipe_handle; int ctrlreq_queue; int hlist; int ackq; } ;


 int INIT_HLIST_HEAD (int *) ;
 int PN_PIPE_INVALID_HANDLE ;
 struct pep_sock* pep_sk (struct sock*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int pep_init(struct sock *sk)
{
 struct pep_sock *pn = pep_sk(sk);

 INIT_HLIST_HEAD(&pn->ackq);
 INIT_HLIST_HEAD(&pn->hlist);
 skb_queue_head_init(&pn->ctrlreq_queue);
 pn->pipe_handle = PN_PIPE_INVALID_HANDLE;
 return 0;
}
