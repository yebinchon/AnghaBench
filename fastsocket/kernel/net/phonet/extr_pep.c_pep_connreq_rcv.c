
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct sockaddr_pn {int dummy; } ;
struct sock {scalar_t__ sk_state; int (* sk_data_ready ) (struct sock*,int ) ;int sk_receive_queue; int sk_destruct; int sk_protocol; int sk_backlog_rcv; int sk_prot; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {scalar_t__ pipe_handle; int state_after_connect; int other_pep_type; scalar_t__* data; } ;
struct TYPE_2__ {int resource; int sobject; } ;
struct pep_sock {int peer_type; int ackq; scalar_t__ init_enable; int tx_fc; int rx_fc; scalar_t__ rx_credits; int tx_credits; scalar_t__ pipe_handle; int ctrlreq_queue; TYPE_1__ pn_sk; } ;
typedef int buf ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int PF_PHONET ;
 int PN_LEGACY_FLOW_CONTROL ;


 int PN_PIPE_ERR_INVALID_PARAM ;
 int PN_PIPE_ERR_PEP_IN_USE ;

 int SOCK_DEAD ;
 scalar_t__ TCP_LISTEN ;
 scalar_t__ TCP_SYN_RECV ;
 int atomic_set (int *,int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__* pep_get_sb (struct sk_buff*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int pep_reject_conn (struct sock*,struct sk_buff*,int ) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_destruct ;
 int pipe_do_rcv ;
 int pn_skb_get_dst_sockaddr (struct sk_buff*,struct sockaddr_pn*) ;
 int pn_sockaddr_get_object (struct sockaddr_pn*) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;
 int pskb_pull (struct sk_buff*,int) ;
 int sk_acceptq_added (struct sock*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 int sk_add_node (struct sock*,int *) ;
 struct sock* sk_alloc (int ,int ,int ,int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_queue_empty (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int skb_queue_head_init (int *) ;
 int sock_flag (struct sock*,int ) ;
 int sock_init_data (int *,struct sock*) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pep_connreq_rcv(struct sock *sk, struct sk_buff *skb)
{
 struct sock *newsk;
 struct pep_sock *newpn, *pn = pep_sk(sk);
 struct pnpipehdr *hdr;
 struct sockaddr_pn dst;
 u16 peer_type;
 u8 pipe_handle, enabled, n_sb;

 if (!pskb_pull(skb, sizeof(*hdr) + 4))
  return -EINVAL;

 hdr = pnp_hdr(skb);
 pipe_handle = hdr->pipe_handle;
 switch (hdr->state_after_connect) {
 case 130:
  enabled = 0;
  break;
 case 129:
  enabled = 1;
  break;
 default:
  pep_reject_conn(sk, skb, PN_PIPE_ERR_INVALID_PARAM);
  return -EINVAL;
 }
 peer_type = hdr->other_pep_type << 8;

 if (unlikely(sk->sk_state != TCP_LISTEN) || sk_acceptq_is_full(sk)) {
  pep_reject_conn(sk, skb, PN_PIPE_ERR_PEP_IN_USE);
  return -ENOBUFS;
 }


 n_sb = hdr->data[4];
 while (n_sb > 0) {
  u8 type, buf[1], len = sizeof(buf);
  const u8 *data = pep_get_sb(skb, &type, &len, buf);

  if (data == ((void*)0))
   return -EINVAL;
  switch (type) {
  case 128:
   if (len < 1)
    return -EINVAL;
   peer_type = (peer_type & 0xff00) | data[0];
   break;
  }
  n_sb--;
 }

 skb = skb_clone(skb, GFP_ATOMIC);
 if (!skb)
  return -ENOMEM;


 newsk = sk_alloc(sock_net(sk), PF_PHONET, GFP_ATOMIC, sk->sk_prot);
 if (!newsk) {
  kfree_skb(skb);
  return -ENOMEM;
 }
 sock_init_data(((void*)0), newsk);
 newsk->sk_state = TCP_SYN_RECV;
 newsk->sk_backlog_rcv = pipe_do_rcv;
 newsk->sk_protocol = sk->sk_protocol;
 newsk->sk_destruct = pipe_destruct;

 newpn = pep_sk(newsk);
 pn_skb_get_dst_sockaddr(skb, &dst);
 newpn->pn_sk.sobject = pn_sockaddr_get_object(&dst);
 newpn->pn_sk.resource = pn->pn_sk.resource;
 skb_queue_head_init(&newpn->ctrlreq_queue);
 newpn->pipe_handle = pipe_handle;
 atomic_set(&newpn->tx_credits, 0);
 newpn->peer_type = peer_type;
 newpn->rx_credits = 0;
 newpn->rx_fc = newpn->tx_fc = PN_LEGACY_FLOW_CONTROL;
 newpn->init_enable = enabled;

 BUG_ON(!skb_queue_empty(&newsk->sk_receive_queue));
 skb_queue_head(&newsk->sk_receive_queue, skb);
 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_data_ready(sk, 0);

 sk_acceptq_added(sk);
 sk_add_node(newsk, &pn->ackq);
 return 0;
}
