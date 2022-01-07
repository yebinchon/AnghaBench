
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipq {int q; } ;


 int inet_frag_kill (int *,int *) ;
 int ip4_frags ;

__attribute__((used)) static void ipq_kill(struct ipq *ipq)
{
 inet_frag_kill(&ipq->q, &ip4_frags);
}
