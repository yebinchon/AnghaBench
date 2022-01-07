
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iphdr {int ihl; int protocol; int frag_off; int id; int daddr; int saddr; } ;
struct audit_buffer {int dummy; } ;
typedef int _iph ;


 int IP_OFFSET ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 int audit_proto (struct audit_buffer*,struct sk_buff*,int ,int) ;
 int ntohs (int ) ;
 struct iphdr* skb_header_pointer (struct sk_buff*,int ,int,struct iphdr*) ;

__attribute__((used)) static void audit_ip4(struct audit_buffer *ab, struct sk_buff *skb)
{
 struct iphdr _iph;
 const struct iphdr *ih;

 ih = skb_header_pointer(skb, 0, sizeof(_iph), &_iph);
 if (!ih) {
  audit_log_format(ab, " truncated=1");
  return;
 }

 audit_log_format(ab, " saddr=%pI4 daddr=%pI4 ipid=%hu proto=%hhu",
  &ih->saddr, &ih->daddr, ntohs(ih->id), ih->protocol);

 if (ntohs(ih->frag_off) & IP_OFFSET) {
  audit_log_format(ab, " frag=1");
  return;
 }

 audit_proto(ab, skb, ih->protocol, ih->ihl * 4);
}
