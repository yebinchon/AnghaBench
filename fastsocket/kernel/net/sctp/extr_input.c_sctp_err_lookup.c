
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sock {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct sctphdr {int vtag; } ;
struct sctp_transport {int dummy; } ;
struct TYPE_7__ {int init_tag; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct sctp_init_chunk {TYPE_3__ init_hdr; TYPE_2__ chunk_hdr; } ;
struct TYPE_8__ {scalar_t__ my_vtag; scalar_t__ peer_vtag; } ;
struct TYPE_5__ {struct sock* sk; } ;
struct sctp_association {TYPE_4__ c; TYPE_1__ base; } ;
struct sctp_af {int (* from_skb ) (union sctp_addr*,struct sk_buff*,int) ;} ;
typedef int sctp_chunkhdr_t ;
typedef scalar_t__ __u32 ;
typedef int __be32 ;


 int LINUX_MIB_LOCKDROPPEDICMPS ;
 int NET_INC_STATS_BH (int *,int ) ;
 scalar_t__ SCTP_CID_INIT ;
 struct sctp_association* __sctp_lookup_association (union sctp_addr*,union sctp_addr*,struct sctp_transport**) ;
 int init_net ;
 scalar_t__ ntohl (int ) ;
 int sctp_association_put (struct sctp_association*) ;
 int sctp_bh_lock_sock (struct sock*) ;
 struct sctp_af* sctp_get_af_specific (int) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int stub1 (union sctp_addr*,struct sk_buff*,int) ;
 int stub2 (union sctp_addr*,struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

struct sock *sctp_err_lookup(int family, struct sk_buff *skb,
        struct sctphdr *sctphdr,
        struct sctp_association **app,
        struct sctp_transport **tpp)
{
 union sctp_addr saddr;
 union sctp_addr daddr;
 struct sctp_af *af;
 struct sock *sk = ((void*)0);
 struct sctp_association *asoc;
 struct sctp_transport *transport = ((void*)0);
 struct sctp_init_chunk *chunkhdr;
 __u32 vtag = ntohl(sctphdr->vtag);
 int len = skb->len - ((void *)sctphdr - (void *)skb->data);

 *app = ((void*)0); *tpp = ((void*)0);

 af = sctp_get_af_specific(family);
 if (unlikely(!af)) {
  return ((void*)0);
 }


 af->from_skb(&saddr, skb, 1);
 af->from_skb(&daddr, skb, 0);




 asoc = __sctp_lookup_association(&saddr, &daddr, &transport);
 if (!asoc)
  return ((void*)0);

 sk = asoc->base.sk;
 if (vtag == 0) {
  chunkhdr = (struct sctp_init_chunk *)((void *)sctphdr
    + sizeof(struct sctphdr));
  if (len < sizeof(struct sctphdr) + sizeof(sctp_chunkhdr_t)
     + sizeof(__be32) ||
      chunkhdr->chunk_hdr.type != SCTP_CID_INIT ||
      ntohl(chunkhdr->init_hdr.init_tag) != asoc->c.my_vtag) {
   goto out;
  }
 } else if (vtag != asoc->c.peer_vtag) {
  goto out;
 }

 sctp_bh_lock_sock(sk);




 if (sock_owned_by_user(sk))
  NET_INC_STATS_BH(&init_net, LINUX_MIB_LOCKDROPPEDICMPS);

 *app = asoc;
 *tpp = transport;
 return sk;

out:
 if (asoc)
  sctp_association_put(asoc);
 return ((void*)0);
}
