
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
typedef size_t ip_set_id_t ;
struct TYPE_2__ {scalar_t__ ref; } ;


 int ENOENT ;
 size_t IPSET_ATTR_SETNAME ;
 int IPSET_ERR_BUSY ;
 int IPSET_ERR_PROTOCOL ;
 size_t IPSET_INVALID_ID ;
 size_t find_set_id (int ) ;
 int ip_set_destroy_set (size_t) ;
 TYPE_1__** ip_set_list ;
 size_t ip_set_max ;
 int ip_set_ref_lock ;
 int nla_data (struct nlattr const* const) ;
 int protocol_failed (struct nlattr const* const*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
ip_set_destroy(struct sock *ctnl, struct sk_buff *skb,
        const struct nlmsghdr *nlh,
        const struct nlattr * const attr[])
{
 ip_set_id_t i;
 int ret = 0;

 if (unlikely(protocol_failed(attr)))
  return -IPSET_ERR_PROTOCOL;
 read_lock_bh(&ip_set_ref_lock);
 if (!attr[IPSET_ATTR_SETNAME]) {
  for (i = 0; i < ip_set_max; i++) {
   if (ip_set_list[i] != ((void*)0) && ip_set_list[i]->ref) {
    ret = -IPSET_ERR_BUSY;
    goto out;
   }
  }
  read_unlock_bh(&ip_set_ref_lock);
  for (i = 0; i < ip_set_max; i++) {
   if (ip_set_list[i] != ((void*)0))
    ip_set_destroy_set(i);
  }
 } else {
  i = find_set_id(nla_data(attr[IPSET_ATTR_SETNAME]));
  if (i == IPSET_INVALID_ID) {
   ret = -ENOENT;
   goto out;
  } else if (ip_set_list[i]->ref) {
   ret = -IPSET_ERR_BUSY;
   goto out;
  }
  read_unlock_bh(&ip_set_ref_lock);

  ip_set_destroy_set(i);
 }
 return 0;
out:
 read_unlock_bh(&ip_set_ref_lock);
 return ret;
}
