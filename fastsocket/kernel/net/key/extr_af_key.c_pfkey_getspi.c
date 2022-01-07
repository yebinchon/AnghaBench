
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_4__ {int daddr; } ;
struct xfrm_state {TYPE_2__ id; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {unsigned short sa_family; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct sadb_x_sa2 {int sadb_x_sa2_reqid; int sadb_x_sa2_mode; } ;
struct sadb_spirange {int sadb_spirange_min; int sadb_spirange_max; } ;
struct sadb_msg {int sadb_msg_pid; scalar_t__ sadb_msg_seq; scalar_t__ sadb_msg_reserved; scalar_t__ sadb_msg_errno; int sadb_msg_satype; int sadb_msg_type; int sadb_msg_version; } ;
struct sadb_address {int dummy; } ;
struct net {int dummy; } ;




 int BROADCAST_ONE ;
 int DUMMY_MARK ;
 int EINVAL ;
 int ENOENT ;
 struct sk_buff* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int SADB_EXT_ADDRESS_DST ;
 int SADB_EXT_ADDRESS_SRC ;
 int SADB_EXT_SPIRANGE ;
 int SADB_GETSPI ;
 int SADB_X_EXT_SA2 ;
 int dummy_mark ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,struct sock*,struct net*) ;
 int pfkey_mode_to_xfrm (int ) ;
 int pfkey_proto2satype (scalar_t__) ;
 scalar_t__ pfkey_satype2proto (int ) ;
 struct sk_buff* pfkey_xfrm_state2msg (struct xfrm_state*) ;
 int present_and_same_family (void*,void*) ;
 struct net* sock_net (struct sock*) ;
 scalar_t__ xfrm_addr_cmp (int *,int *,unsigned short) ;
 int xfrm_alloc_spi (struct xfrm_state*,int,int) ;
 struct xfrm_state* xfrm_find_acq (struct net*,int *,int,int,scalar_t__,int *,int *,int,unsigned short) ;
 struct xfrm_state* xfrm_find_acq_byseq (struct net*,int ,scalar_t__) ;
 int xfrm_state_put (struct xfrm_state*) ;

__attribute__((used)) static int pfkey_getspi(struct sock *sk, struct sk_buff *skb, struct sadb_msg *hdr, void **ext_hdrs)
{
 struct net *net = sock_net(sk);
 struct sk_buff *resp_skb;
 struct sadb_x_sa2 *sa2;
 struct sadb_address *saddr, *daddr;
 struct sadb_msg *out_hdr;
 struct sadb_spirange *range;
 struct xfrm_state *x = ((void*)0);
 int mode;
 int err;
 u32 min_spi, max_spi;
 u32 reqid;
 u8 proto;
 unsigned short family;
 xfrm_address_t *xsaddr = ((void*)0), *xdaddr = ((void*)0);

 if (!present_and_same_family(ext_hdrs[SADB_EXT_ADDRESS_SRC-1],
         ext_hdrs[SADB_EXT_ADDRESS_DST-1]))
  return -EINVAL;

 proto = pfkey_satype2proto(hdr->sadb_msg_satype);
 if (proto == 0)
  return -EINVAL;

 if ((sa2 = ext_hdrs[SADB_X_EXT_SA2-1]) != ((void*)0)) {
  mode = pfkey_mode_to_xfrm(sa2->sadb_x_sa2_mode);
  if (mode < 0)
   return -EINVAL;
  reqid = sa2->sadb_x_sa2_reqid;
 } else {
  mode = 0;
  reqid = 0;
 }

 saddr = ext_hdrs[SADB_EXT_ADDRESS_SRC-1];
 daddr = ext_hdrs[SADB_EXT_ADDRESS_DST-1];

 family = ((struct sockaddr *)(saddr + 1))->sa_family;
 switch (family) {
 case 129:
  xdaddr = (xfrm_address_t *)&((struct sockaddr_in *)(daddr + 1))->sin_addr.s_addr;
  xsaddr = (xfrm_address_t *)&((struct sockaddr_in *)(saddr + 1))->sin_addr.s_addr;
  break;






 }

 if (hdr->sadb_msg_seq) {
  x = xfrm_find_acq_byseq(net, DUMMY_MARK, hdr->sadb_msg_seq);
  if (x && xfrm_addr_cmp(&x->id.daddr, xdaddr, family)) {
   xfrm_state_put(x);
   x = ((void*)0);
  }
 }

 if (!x)
  x = xfrm_find_acq(net, &dummy_mark, mode, reqid, proto, xdaddr, xsaddr, 1, family);

 if (x == ((void*)0))
  return -ENOENT;

 min_spi = 0x100;
 max_spi = 0x0fffffff;

 range = ext_hdrs[SADB_EXT_SPIRANGE-1];
 if (range) {
  min_spi = range->sadb_spirange_min;
  max_spi = range->sadb_spirange_max;
 }

 err = xfrm_alloc_spi(x, min_spi, max_spi);
 resp_skb = err ? ERR_PTR(err) : pfkey_xfrm_state2msg(x);

 if (IS_ERR(resp_skb)) {
  xfrm_state_put(x);
  return PTR_ERR(resp_skb);
 }

 out_hdr = (struct sadb_msg *) resp_skb->data;
 out_hdr->sadb_msg_version = hdr->sadb_msg_version;
 out_hdr->sadb_msg_type = SADB_GETSPI;
 out_hdr->sadb_msg_satype = pfkey_proto2satype(proto);
 out_hdr->sadb_msg_errno = 0;
 out_hdr->sadb_msg_reserved = 0;
 out_hdr->sadb_msg_seq = hdr->sadb_msg_seq;
 out_hdr->sadb_msg_pid = hdr->sadb_msg_pid;

 xfrm_state_put(x);

 pfkey_broadcast(resp_skb, GFP_KERNEL, BROADCAST_ONE, sk, net);

 return 0;
}
