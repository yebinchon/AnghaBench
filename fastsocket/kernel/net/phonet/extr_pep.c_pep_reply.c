
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {int error_code; int pipe_handle; scalar_t__ message_id; int utid; } ;
typedef int gfp_t ;


 int ENOMEM ;
 scalar_t__ MAX_PNPIPE_HEADER ;
 int __skb_push (struct sk_buff*,int) ;
 int __skb_put (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int pipe_srv ;
 int pn_skb_send (struct sock*,struct sk_buff*,int *) ;
 void* pnp_hdr (struct sk_buff*) ;
 int skb_copy_to_linear_data (struct sk_buff*,void const*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;

__attribute__((used)) static int pep_reply(struct sock *sk, struct sk_buff *oskb,
   u8 code, const void *data, int len, gfp_t priority)
{
 const struct pnpipehdr *oph = pnp_hdr(oskb);
 struct pnpipehdr *ph;
 struct sk_buff *skb;

 skb = alloc_skb(MAX_PNPIPE_HEADER + len, priority);
 if (!skb)
  return -ENOMEM;
 skb_set_owner_w(skb, sk);

 skb_reserve(skb, MAX_PNPIPE_HEADER);
 __skb_put(skb, len);
 skb_copy_to_linear_data(skb, data, len);
 __skb_push(skb, sizeof(*ph));
 skb_reset_transport_header(skb);
 ph = pnp_hdr(skb);
 ph->utid = oph->utid;
 ph->message_id = oph->message_id + 1;
 ph->pipe_handle = oph->pipe_handle;
 ph->error_code = code;

 return pn_skb_send(sk, skb, &pipe_srv);
}
