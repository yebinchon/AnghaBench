
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
typedef size_t ip_set_id_t ;


 int ENOENT ;
 size_t IPSET_ATTR_SETNAME ;
 int IPSET_ERR_PROTOCOL ;
 size_t IPSET_INVALID_ID ;
 size_t find_set_id (int ) ;
 int ip_set_flush_set (int *) ;
 int ** ip_set_list ;
 size_t ip_set_max ;
 int nla_data (struct nlattr const* const) ;
 int protocol_failed (struct nlattr const* const*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
ip_set_flush(struct sock *ctnl, struct sk_buff *skb,
      const struct nlmsghdr *nlh,
      const struct nlattr * const attr[])
{
 ip_set_id_t i;

 if (unlikely(protocol_failed(attr)))
  return -IPSET_ERR_PROTOCOL;

 if (!attr[IPSET_ATTR_SETNAME]) {
  for (i = 0; i < ip_set_max; i++)
   if (ip_set_list[i] != ((void*)0))
    ip_set_flush_set(ip_set_list[i]);
 } else {
  i = find_set_id(nla_data(attr[IPSET_ATTR_SETNAME]));
  if (i == IPSET_INVALID_ID)
   return -ENOENT;

  ip_set_flush_set(ip_set_list[i]);
 }

 return 0;
}
