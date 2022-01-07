
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
typedef int u32 ;
struct sk_buff {unsigned char* data; int len; } ;
struct ipv6hdr {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int payload_len; } ;


 int IPV6_MAXPLEN ;



 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int ntohl (int ) ;
 int pskb_trim_rcsum (struct sk_buff*,int ) ;
 int skb_headlen (struct sk_buff*) ;
 unsigned char* skb_network_header (struct sk_buff*) ;

__attribute__((used)) static int check_hbh_len(struct sk_buff *skb)
{
 unsigned char *raw = (u8 *)(ipv6_hdr(skb) + 1);
 u32 pkt_len;
 const unsigned char *nh = skb_network_header(skb);
 int off = raw - nh;
 int len = (raw[1] + 1) << 3;

 if ((raw + len) - skb->data > skb_headlen(skb))
  goto bad;

 off += 2;
 len -= 2;

 while (len > 0) {
  int optlen = nh[off + 1] + 2;

  switch (nh[off]) {
  case 129:
   optlen = 1;
   break;

  case 128:
   break;

  case 130:
   if (nh[off + 1] != 4 || (off & 3) != 2)
    goto bad;
   pkt_len = ntohl(*(__be32 *) (nh + off + 2));
   if (pkt_len <= IPV6_MAXPLEN ||
       ipv6_hdr(skb)->payload_len)
    goto bad;
   if (pkt_len > skb->len - sizeof(struct ipv6hdr))
    goto bad;
   if (pskb_trim_rcsum(skb,
         pkt_len + sizeof(struct ipv6hdr)))
    goto bad;
   nh = skb_network_header(skb);
   break;
  default:
   if (optlen > len)
    goto bad;
   break;
  }
  off += optlen;
  len -= optlen;
 }
 if (len == 0)
  return 0;
bad:
 return -1;

}
