
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hash_ip6_telem {int timeout; int ip; } ;
struct hash_ip6_elem {int dummy; } ;


 int IPSET_ATTR_IP ;
 int IPSET_ATTR_TIMEOUT ;
 int NLA_PUT_IPADDR6 (struct sk_buff*,int ,int *) ;
 int NLA_PUT_NET32 (struct sk_buff*,int ,int ) ;
 int htonl (int ) ;
 int ip_set_timeout_get (int ) ;

__attribute__((used)) static bool
hash_ip6_data_tlist(struct sk_buff *skb, const struct hash_ip6_elem *data)
{
 const struct hash_ip6_telem *e =
  (const struct hash_ip6_telem *)data;

 NLA_PUT_IPADDR6(skb, IPSET_ATTR_IP, &e->ip);
 NLA_PUT_NET32(skb, IPSET_ATTR_TIMEOUT,
        htonl(ip_set_timeout_get(e->timeout)));
 return 0;

nla_put_failure:
 return 1;
}
