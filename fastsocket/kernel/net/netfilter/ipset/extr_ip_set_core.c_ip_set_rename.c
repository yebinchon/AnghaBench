
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_set {scalar_t__ ref; int name; } ;
typedef size_t ip_set_id_t ;
struct TYPE_2__ {int name; } ;


 int ENOENT ;
 size_t IPSET_ATTR_SETNAME ;
 size_t IPSET_ATTR_SETNAME2 ;
 int IPSET_ERR_EXIST_SETNAME2 ;
 int IPSET_ERR_PROTOCOL ;
 int IPSET_ERR_REFERENCED ;
 int IPSET_MAXNAMELEN ;
 scalar_t__ STREQ (int ,char const*) ;
 struct ip_set* find_set (char*) ;
 TYPE_1__** ip_set_list ;
 size_t ip_set_max ;
 int ip_set_ref_lock ;
 char* nla_data (struct nlattr const* const) ;
 scalar_t__ protocol_failed (struct nlattr const* const*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int strncpy (int ,char const*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ip_set_rename(struct sock *ctnl, struct sk_buff *skb,
       const struct nlmsghdr *nlh,
       const struct nlattr * const attr[])
{
 struct ip_set *set;
 const char *name2;
 ip_set_id_t i;
 int ret = 0;

 if (unlikely(protocol_failed(attr) ||
       attr[IPSET_ATTR_SETNAME] == ((void*)0) ||
       attr[IPSET_ATTR_SETNAME2] == ((void*)0)))
  return -IPSET_ERR_PROTOCOL;

 set = find_set(nla_data(attr[IPSET_ATTR_SETNAME]));
 if (set == ((void*)0))
  return -ENOENT;

 read_lock_bh(&ip_set_ref_lock);
 if (set->ref != 0) {
  ret = -IPSET_ERR_REFERENCED;
  goto out;
 }

 name2 = nla_data(attr[IPSET_ATTR_SETNAME2]);
 for (i = 0; i < ip_set_max; i++) {
  if (ip_set_list[i] != ((void*)0) &&
      STREQ(ip_set_list[i]->name, name2)) {
   ret = -IPSET_ERR_EXIST_SETNAME2;
   goto out;
  }
 }
 strncpy(set->name, name2, IPSET_MAXNAMELEN);

out:
 read_unlock_bh(&ip_set_ref_lock);
 return ret;
}
