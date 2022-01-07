
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct pep_sock {int tx_credits; } ;


 int atomic_read (int *) ;
 struct pep_sock* pep_sk (struct sock*) ;

int pep_writeable(struct sock *sk)
{
 struct pep_sock *pn = pep_sk(sk);

 return atomic_read(&pn->tx_credits);
}
