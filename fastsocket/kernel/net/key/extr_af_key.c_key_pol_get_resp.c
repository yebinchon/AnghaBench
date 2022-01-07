
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct sadb_msg {int sadb_msg_pid; int sadb_msg_seq; scalar_t__ sadb_msg_errno; scalar_t__ sadb_msg_satype; int sadb_msg_type; int sadb_msg_version; } ;


 int BROADCAST_ONE ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,struct sock*,int ) ;
 int pfkey_xfrm_policy2msg (struct sk_buff*,struct xfrm_policy*,int) ;
 struct sk_buff* pfkey_xfrm_policy2msg_prep (struct xfrm_policy*) ;
 int xp_net (struct xfrm_policy*) ;

__attribute__((used)) static int key_pol_get_resp(struct sock *sk, struct xfrm_policy *xp, struct sadb_msg *hdr, int dir)
{
 int err;
 struct sk_buff *out_skb;
 struct sadb_msg *out_hdr;
 err = 0;

 out_skb = pfkey_xfrm_policy2msg_prep(xp);
 if (IS_ERR(out_skb)) {
  err = PTR_ERR(out_skb);
  goto out;
 }
 err = pfkey_xfrm_policy2msg(out_skb, xp, dir);
 if (err < 0)
  goto out;

 out_hdr = (struct sadb_msg *) out_skb->data;
 out_hdr->sadb_msg_version = hdr->sadb_msg_version;
 out_hdr->sadb_msg_type = hdr->sadb_msg_type;
 out_hdr->sadb_msg_satype = 0;
 out_hdr->sadb_msg_errno = 0;
 out_hdr->sadb_msg_seq = hdr->sadb_msg_seq;
 out_hdr->sadb_msg_pid = hdr->sadb_msg_pid;
 pfkey_broadcast(out_skb, GFP_ATOMIC, BROADCAST_ONE, sk, xp_net(xp));
 err = 0;

out:
 return err;
}
