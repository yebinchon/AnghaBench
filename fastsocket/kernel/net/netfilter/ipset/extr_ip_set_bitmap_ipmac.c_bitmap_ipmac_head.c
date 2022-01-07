
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_set {int ref; struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {int first_ip; int last_ip; int dsize; int timeout; } ;


 int EMSGSIZE ;
 int IPSET_ATTR_DATA ;
 int IPSET_ATTR_IP ;
 int IPSET_ATTR_IP_TO ;
 int IPSET_ATTR_MEMSIZE ;
 int IPSET_ATTR_REFERENCES ;
 int IPSET_ATTR_TIMEOUT ;
 int NLA_PUT_IPADDR4 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_NET32 (struct sk_buff*,int ,int ) ;
 int htonl (int) ;
 int ipset_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* ipset_nest_start (struct sk_buff*,int ) ;
 scalar_t__ with_timeout (int) ;

__attribute__((used)) static int
bitmap_ipmac_head(struct ip_set *set, struct sk_buff *skb)
{
 const struct bitmap_ipmac *map = set->data;
 struct nlattr *nested;

 nested = ipset_nest_start(skb, IPSET_ATTR_DATA);
 if (!nested)
  goto nla_put_failure;
 NLA_PUT_IPADDR4(skb, IPSET_ATTR_IP, htonl(map->first_ip));
 NLA_PUT_IPADDR4(skb, IPSET_ATTR_IP_TO, htonl(map->last_ip));
 NLA_PUT_NET32(skb, IPSET_ATTR_REFERENCES, htonl(set->ref - 1));
 NLA_PUT_NET32(skb, IPSET_ATTR_MEMSIZE,
        htonl(sizeof(*map)
       + (map->last_ip - map->first_ip + 1) * map->dsize));
 if (with_timeout(map->timeout))
  NLA_PUT_NET32(skb, IPSET_ATTR_TIMEOUT, htonl(map->timeout));
 ipset_nest_end(skb, nested);

 return 0;
nla_put_failure:
 return -EMSGSIZE;
}
