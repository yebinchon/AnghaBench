
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_satype; int sadb_msg_len; scalar_t__ sadb_msg_errno; } ;
struct pfkey_sock {int promisc; } ;


 int BROADCAST_ALL ;
 int EINVAL ;
 int GFP_KERNEL ;
 int pfkey_broadcast (int ,int ,int ,int *,int ) ;
 struct pfkey_sock* pfkey_sk (struct sock*) ;
 int skb_clone (struct sk_buff*,int ) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int pfkey_promisc(struct sock *sk, struct sk_buff *skb, struct sadb_msg *hdr, void **ext_hdrs)
{
 struct pfkey_sock *pfk = pfkey_sk(sk);
 int satype = hdr->sadb_msg_satype;

 if (hdr->sadb_msg_len == (sizeof(*hdr) / sizeof(uint64_t))) {

  hdr->sadb_msg_errno = 0;
  if (satype != 0 && satype != 1)
   return -EINVAL;
  pfk->promisc = satype;
 }
 pfkey_broadcast(skb_clone(skb, GFP_KERNEL), GFP_KERNEL, BROADCAST_ALL, ((void*)0), sock_net(sk));
 return 0;
}
