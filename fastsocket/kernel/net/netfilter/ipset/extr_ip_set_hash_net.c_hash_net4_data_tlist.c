
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hash_net4_telem {int timeout; int cidr; int ip; } ;
struct hash_net4_elem {int dummy; } ;


 int IPSET_ATTR_CIDR ;
 int IPSET_ATTR_IP ;
 int IPSET_ATTR_TIMEOUT ;
 int NLA_PUT_IPADDR4 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_NET32 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U8 (struct sk_buff*,int ,int ) ;
 int htonl (int ) ;
 int ip_set_timeout_get (int ) ;

__attribute__((used)) static bool
hash_net4_data_tlist(struct sk_buff *skb, const struct hash_net4_elem *data)
{
 const struct hash_net4_telem *tdata =
  (const struct hash_net4_telem *)data;

 NLA_PUT_IPADDR4(skb, IPSET_ATTR_IP, tdata->ip);
 NLA_PUT_U8(skb, IPSET_ATTR_CIDR, tdata->cidr);
 NLA_PUT_NET32(skb, IPSET_ATTR_TIMEOUT,
        htonl(ip_set_timeout_get(tdata->timeout)));

 return 0;

nla_put_failure:
 return 1;
}
