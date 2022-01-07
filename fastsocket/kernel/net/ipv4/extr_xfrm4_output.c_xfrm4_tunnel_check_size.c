
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ local_df; } ;
struct dst_entry {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int frag_off; } ;


 int EMSGSIZE ;
 int ICMP_DEST_UNREACH ;
 int ICMP_FRAG_NEEDED ;
 TYPE_2__* IPCB (struct sk_buff*) ;
 int IPSKB_XFRM_TUNNEL_SIZE ;
 int IP_DF ;
 int dst_mtu (struct dst_entry*) ;
 int htonl (int) ;
 int htons (int ) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;

__attribute__((used)) static int xfrm4_tunnel_check_size(struct sk_buff *skb)
{
 int mtu, ret = 0;
 struct dst_entry *dst;

 if (IPCB(skb)->flags & IPSKB_XFRM_TUNNEL_SIZE)
  goto out;

 if (!(ip_hdr(skb)->frag_off & htons(IP_DF)) || skb->local_df)
  goto out;

 dst = skb_dst(skb);
 mtu = dst_mtu(dst);
 if (skb->len > mtu) {
  icmp_send(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED, htonl(mtu));
  ret = -EMSGSIZE;
 }
out:
 return ret;
}
