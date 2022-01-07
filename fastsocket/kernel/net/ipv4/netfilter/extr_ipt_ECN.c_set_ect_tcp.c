
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {scalar_t__ ece; scalar_t__ cwr; int check; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ ece; scalar_t__ cwr; } ;
struct TYPE_4__ {TYPE_1__ tcp; } ;
struct ipt_ECN_info {int operation; TYPE_2__ proto; } ;
typedef int _tcph ;
typedef int __be16 ;


 int IPT_ECN_OP_SET_CWR ;
 int IPT_ECN_OP_SET_ECE ;
 int inet_proto_csum_replace2 (int *,struct sk_buff*,int ,int ,int ) ;
 scalar_t__ ip_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 struct tcphdr* skb_header_pointer (struct sk_buff*,int,int,struct tcphdr*) ;
 int skb_make_writable (struct sk_buff*,int) ;

__attribute__((used)) static inline bool
set_ect_tcp(struct sk_buff *skb, const struct ipt_ECN_info *einfo)
{
 struct tcphdr _tcph, *tcph;
 __be16 oldval;


 tcph = skb_header_pointer(skb, ip_hdrlen(skb), sizeof(_tcph), &_tcph);
 if (!tcph)
  return 0;

 if ((!(einfo->operation & IPT_ECN_OP_SET_ECE) ||
      tcph->ece == einfo->proto.tcp.ece) &&
     (!(einfo->operation & IPT_ECN_OP_SET_CWR) ||
      tcph->cwr == einfo->proto.tcp.cwr))
  return 1;

 if (!skb_make_writable(skb, ip_hdrlen(skb) + sizeof(*tcph)))
  return 0;
 tcph = (void *)ip_hdr(skb) + ip_hdrlen(skb);

 oldval = ((__be16 *)tcph)[6];
 if (einfo->operation & IPT_ECN_OP_SET_ECE)
  tcph->ece = einfo->proto.tcp.ece;
 if (einfo->operation & IPT_ECN_OP_SET_CWR)
  tcph->cwr = einfo->proto.tcp.cwr;

 inet_proto_csum_replace2(&tcph->check, skb,
     oldval, ((__be16 *)tcph)[6], 0);
 return 1;
}
