
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {void** data; int pep_type; int pipe_handle; int message_id; scalar_t__ utid; } ;
struct pep_sock {int pipe_handle; } ;
typedef int gfp_t ;


 int ENOMEM ;
 scalar_t__ MAX_PNPIPE_HEADER ;
 void* PAD ;
 int PNS_PEP_STATUS_IND ;
 int PN_PEP_TYPE_COMMON ;
 int __skb_push (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_srv ;
 int pn_skb_send (struct sock*,struct sk_buff*,int *) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;

__attribute__((used)) static int pipe_snd_status(struct sock *sk, u8 type, u8 status, gfp_t priority)
{
 struct pep_sock *pn = pep_sk(sk);
 struct pnpipehdr *ph;
 struct sk_buff *skb;

 skb = alloc_skb(MAX_PNPIPE_HEADER + 4, priority);
 if (!skb)
  return -ENOMEM;
 skb_set_owner_w(skb, sk);

 skb_reserve(skb, MAX_PNPIPE_HEADER + 4);
 __skb_push(skb, sizeof(*ph) + 4);
 skb_reset_transport_header(skb);
 ph = pnp_hdr(skb);
 ph->utid = 0;
 ph->message_id = PNS_PEP_STATUS_IND;
 ph->pipe_handle = pn->pipe_handle;
 ph->pep_type = PN_PEP_TYPE_COMMON;
 ph->data[1] = type;
 ph->data[2] = PAD;
 ph->data[3] = PAD;
 ph->data[4] = status;

 return pn_skb_send(sk, skb, &pipe_srv);
}
