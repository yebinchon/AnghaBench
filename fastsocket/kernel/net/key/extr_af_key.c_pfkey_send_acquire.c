
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct xfrm_tmpl {int dummy; } ;
struct TYPE_6__ {scalar_t__ proto; int daddr; } ;
struct TYPE_5__ {int family; int saddr; } ;
struct TYPE_4__ {int seq; } ;
struct xfrm_state {TYPE_3__ id; TYPE_2__ props; TYPE_1__ km; struct xfrm_sec_ctx* security; } ;
struct xfrm_sec_ctx {int ctx_len; int ctx_str; int ctx_alg; int ctx_doi; } ;
struct xfrm_policy {int index; } ;
struct sockaddr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_x_sec_ctx {int sadb_x_sec_len; int sadb_x_ctx_len; int sadb_x_ctx_alg; int sadb_x_ctx_doi; int sadb_x_sec_exttype; } ;
struct sadb_x_policy {int sadb_x_policy_len; int sadb_x_policy_dir; int sadb_x_policy_id; int sadb_x_policy_type; int sadb_x_policy_exttype; } ;
struct sadb_msg {int sadb_msg_len; scalar_t__ sadb_msg_pid; int sadb_msg_seq; scalar_t__ sadb_msg_reserved; scalar_t__ sadb_msg_errno; int sadb_msg_satype; int sadb_msg_type; int sadb_msg_version; } ;
struct sadb_address {int sadb_address_len; void* sadb_address_prefixlen; scalar_t__ sadb_address_reserved; scalar_t__ sadb_address_proto; int sadb_address_exttype; } ;


 int BROADCAST_REGISTERED ;
 int BUG () ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IPPROTO_AH ;
 scalar_t__ IPPROTO_ESP ;
 int IPSEC_POLICY_IPSEC ;
 int PFKEY_ALIGN8 (int ) ;
 int PF_KEY_V2 ;
 int SADB_ACQUIRE ;
 int SADB_EXT_ADDRESS_DST ;
 int SADB_EXT_ADDRESS_SRC ;
 int SADB_X_EXT_POLICY ;
 int SADB_X_EXT_SEC_CTX ;
 struct sk_buff* alloc_skb (int,int ) ;
 scalar_t__ count_ah_combs (struct xfrm_tmpl*) ;
 scalar_t__ count_esp_combs (struct xfrm_tmpl*) ;
 int dump_ah_combs (struct sk_buff*,struct xfrm_tmpl*) ;
 int dump_esp_combs (struct sk_buff*,struct xfrm_tmpl*) ;
 int get_acqseq () ;
 int memcpy (struct sadb_x_sec_ctx*,int ,int ) ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,int *,int ) ;
 int pfkey_proto2satype (scalar_t__) ;
 void* pfkey_sockaddr_fill (int *,int ,struct sockaddr*,int ) ;
 int pfkey_sockaddr_size (int ) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int xs_net (struct xfrm_state*) ;

__attribute__((used)) static int pfkey_send_acquire(struct xfrm_state *x, struct xfrm_tmpl *t, struct xfrm_policy *xp, int dir)
{
 struct sk_buff *skb;
 struct sadb_msg *hdr;
 struct sadb_address *addr;
 struct sadb_x_policy *pol;
 int sockaddr_size;
 int size;
 struct sadb_x_sec_ctx *sec_ctx;
 struct xfrm_sec_ctx *xfrm_ctx;
 int ctx_size = 0;

 sockaddr_size = pfkey_sockaddr_size(x->props.family);
 if (!sockaddr_size)
  return -EINVAL;

 size = sizeof(struct sadb_msg) +
  (sizeof(struct sadb_address) * 2) +
  (sockaddr_size * 2) +
  sizeof(struct sadb_x_policy);

 if (x->id.proto == IPPROTO_AH)
  size += count_ah_combs(t);
 else if (x->id.proto == IPPROTO_ESP)
  size += count_esp_combs(t);

 if ((xfrm_ctx = x->security)) {
  ctx_size = PFKEY_ALIGN8(xfrm_ctx->ctx_len);
  size += sizeof(struct sadb_x_sec_ctx) + ctx_size;
 }

 skb = alloc_skb(size + 16, GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 hdr = (struct sadb_msg *) skb_put(skb, sizeof(struct sadb_msg));
 hdr->sadb_msg_version = PF_KEY_V2;
 hdr->sadb_msg_type = SADB_ACQUIRE;
 hdr->sadb_msg_satype = pfkey_proto2satype(x->id.proto);
 hdr->sadb_msg_len = size / sizeof(uint64_t);
 hdr->sadb_msg_errno = 0;
 hdr->sadb_msg_reserved = 0;
 hdr->sadb_msg_seq = x->km.seq = get_acqseq();
 hdr->sadb_msg_pid = 0;


 addr = (struct sadb_address*) skb_put(skb,
           sizeof(struct sadb_address)+sockaddr_size);
 addr->sadb_address_len =
  (sizeof(struct sadb_address)+sockaddr_size)/
   sizeof(uint64_t);
 addr->sadb_address_exttype = SADB_EXT_ADDRESS_SRC;
 addr->sadb_address_proto = 0;
 addr->sadb_address_reserved = 0;
 addr->sadb_address_prefixlen =
  pfkey_sockaddr_fill(&x->props.saddr, 0,
        (struct sockaddr *) (addr + 1),
        x->props.family);
 if (!addr->sadb_address_prefixlen)
  BUG();


 addr = (struct sadb_address*) skb_put(skb,
           sizeof(struct sadb_address)+sockaddr_size);
 addr->sadb_address_len =
  (sizeof(struct sadb_address)+sockaddr_size)/
   sizeof(uint64_t);
 addr->sadb_address_exttype = SADB_EXT_ADDRESS_DST;
 addr->sadb_address_proto = 0;
 addr->sadb_address_reserved = 0;
 addr->sadb_address_prefixlen =
  pfkey_sockaddr_fill(&x->id.daddr, 0,
        (struct sockaddr *) (addr + 1),
        x->props.family);
 if (!addr->sadb_address_prefixlen)
  BUG();

 pol = (struct sadb_x_policy *) skb_put(skb, sizeof(struct sadb_x_policy));
 pol->sadb_x_policy_len = sizeof(struct sadb_x_policy)/sizeof(uint64_t);
 pol->sadb_x_policy_exttype = SADB_X_EXT_POLICY;
 pol->sadb_x_policy_type = IPSEC_POLICY_IPSEC;
 pol->sadb_x_policy_dir = dir+1;
 pol->sadb_x_policy_id = xp->index;


 if (x->id.proto == IPPROTO_AH)
  dump_ah_combs(skb, t);
 else if (x->id.proto == IPPROTO_ESP)
  dump_esp_combs(skb, t);


 if (xfrm_ctx) {
  sec_ctx = (struct sadb_x_sec_ctx *) skb_put(skb,
    sizeof(struct sadb_x_sec_ctx) + ctx_size);
  sec_ctx->sadb_x_sec_len =
    (sizeof(struct sadb_x_sec_ctx) + ctx_size) / sizeof(uint64_t);
  sec_ctx->sadb_x_sec_exttype = SADB_X_EXT_SEC_CTX;
  sec_ctx->sadb_x_ctx_doi = xfrm_ctx->ctx_doi;
  sec_ctx->sadb_x_ctx_alg = xfrm_ctx->ctx_alg;
  sec_ctx->sadb_x_ctx_len = xfrm_ctx->ctx_len;
  memcpy(sec_ctx + 1, xfrm_ctx->ctx_str,
         xfrm_ctx->ctx_len);
 }

 return pfkey_broadcast(skb, GFP_ATOMIC, BROADCAST_REGISTERED, ((void*)0), xs_net(x));
}
