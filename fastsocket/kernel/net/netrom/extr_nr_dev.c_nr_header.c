
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {void const* dev_addr; int addr_len; } ;


 int AX25_ADDR_LEN ;
 unsigned char AX25_CBIT ;
 unsigned char AX25_EBIT ;
 unsigned char AX25_SSSID_SPARE ;
 scalar_t__ NR_NETWORK_LEN ;
 int NR_PROTOEXT ;
 void* NR_PROTO_IP ;
 scalar_t__ NR_TRANSPORT_LEN ;
 int memcpy (unsigned char*,void const*,int ) ;
 unsigned char* skb_push (struct sk_buff*,scalar_t__) ;
 int sysctl_netrom_network_ttl_initialiser ;

__attribute__((used)) static int nr_header(struct sk_buff *skb, struct net_device *dev,
       unsigned short type,
       const void *daddr, const void *saddr, unsigned len)
{
 unsigned char *buff = skb_push(skb, NR_NETWORK_LEN + NR_TRANSPORT_LEN);

 memcpy(buff, (saddr != ((void*)0)) ? saddr : dev->dev_addr, dev->addr_len);
 buff[6] &= ~AX25_CBIT;
 buff[6] &= ~AX25_EBIT;
 buff[6] |= AX25_SSSID_SPARE;
 buff += AX25_ADDR_LEN;

 if (daddr != ((void*)0))
  memcpy(buff, daddr, dev->addr_len);
 buff[6] &= ~AX25_CBIT;
 buff[6] |= AX25_EBIT;
 buff[6] |= AX25_SSSID_SPARE;
 buff += AX25_ADDR_LEN;

 *buff++ = sysctl_netrom_network_ttl_initialiser;

 *buff++ = NR_PROTO_IP;
 *buff++ = NR_PROTO_IP;
 *buff++ = 0;
 *buff++ = 0;
 *buff++ = NR_PROTOEXT;

 if (daddr != ((void*)0))
  return 37;

 return -37;
}
