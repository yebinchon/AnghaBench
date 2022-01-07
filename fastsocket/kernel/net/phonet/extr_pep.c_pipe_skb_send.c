
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {int pipe_handle; int message_id; scalar_t__ utid; } ;
struct pep_sock {int pipe_handle; int tx_credits; int tx_fc; } ;


 int ENOBUFS ;
 int PNS_PIPE_DATA ;
 int atomic_add_unless (int *,int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_srv ;
 scalar_t__ pn_flow_safe (int ) ;
 int pn_skb_send (struct sock*,struct sk_buff*,int *) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static int pipe_skb_send(struct sock *sk, struct sk_buff *skb)
{
 struct pep_sock *pn = pep_sk(sk);
 struct pnpipehdr *ph;

 if (pn_flow_safe(pn->tx_fc) &&
     !atomic_add_unless(&pn->tx_credits, -1, 0)) {
  kfree_skb(skb);
  return -ENOBUFS;
 }

 skb_push(skb, 3);
 skb_reset_transport_header(skb);
 ph = pnp_hdr(skb);
 ph->utid = 0;
 ph->message_id = PNS_PIPE_DATA;
 ph->pipe_handle = pn->pipe_handle;

 return pn_skb_send(sk, skb, &pipe_srv);
}
