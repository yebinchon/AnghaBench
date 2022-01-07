
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_set {scalar_t__ ref; struct bitmap_port* data; } ;
struct bitmap_port {scalar_t__ timeout; scalar_t__ memsize; int last_port; int first_port; } ;


 int EMSGSIZE ;
 int IPSET_ATTR_DATA ;
 int IPSET_ATTR_MEMSIZE ;
 int IPSET_ATTR_PORT ;
 int IPSET_ATTR_PORT_TO ;
 int IPSET_ATTR_REFERENCES ;
 int IPSET_ATTR_TIMEOUT ;
 int NLA_PUT_NET16 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_NET32 (struct sk_buff*,int ,int ) ;
 int htonl (scalar_t__) ;
 int htons (int ) ;
 int ipset_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* ipset_nest_start (struct sk_buff*,int ) ;
 scalar_t__ with_timeout (scalar_t__) ;

__attribute__((used)) static int
bitmap_port_head(struct ip_set *set, struct sk_buff *skb)
{
 const struct bitmap_port *map = set->data;
 struct nlattr *nested;

 nested = ipset_nest_start(skb, IPSET_ATTR_DATA);
 if (!nested)
  goto nla_put_failure;
 NLA_PUT_NET16(skb, IPSET_ATTR_PORT, htons(map->first_port));
 NLA_PUT_NET16(skb, IPSET_ATTR_PORT_TO, htons(map->last_port));
 NLA_PUT_NET32(skb, IPSET_ATTR_REFERENCES, htonl(set->ref - 1));
 NLA_PUT_NET32(skb, IPSET_ATTR_MEMSIZE,
        htonl(sizeof(*map) + map->memsize));
 if (with_timeout(map->timeout))
  NLA_PUT_NET32(skb, IPSET_ATTR_TIMEOUT, htonl(map->timeout));
 ipset_nest_end(skb, nested);

 return 0;
nla_put_failure:
 return -EMSGSIZE;
}
