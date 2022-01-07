
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_len; } ;
struct netlink_callback {scalar_t__* args; TYPE_1__* nlh; int skb; } ;
struct ip_set {int name; int lock; TYPE_3__* variant; TYPE_2__* type; int family; } ;
typedef scalar_t__ ip_set_id_t ;
struct TYPE_8__ {scalar_t__ pid; } ;
struct TYPE_7__ {int (* head ) (struct ip_set*,struct sk_buff*) ;int (* list ) (struct ip_set*,struct sk_buff*,struct netlink_callback*) ;} ;
struct TYPE_6__ {int features; int revision; int name; } ;
struct TYPE_5__ {int nlmsg_seq; } ;


 scalar_t__ DUMP_ALL ;
 scalar_t__ DUMP_INIT ;
 scalar_t__ DUMP_LAST ;
 scalar_t__ DUMP_ONE ;
 int EFAULT ;
 int EMSGSIZE ;
 int ENOENT ;
 int IPSET_ATTR_FAMILY ;
 int IPSET_ATTR_PROTOCOL ;
 int IPSET_ATTR_REVISION ;
 int IPSET_ATTR_SETNAME ;
 int IPSET_ATTR_TYPENAME ;
 int IPSET_CMD_LIST ;
 int IPSET_DUMP_LAST ;
 void* IPSET_INVALID_ID ;
 int IPSET_PROTOCOL ;
 TYPE_4__ NETLINK_CB (int ) ;
 int NLA_PUT_STRING (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U8 (struct sk_buff*,int ,int ) ;
 int NLM_F_ACK ;
 unsigned int NLM_F_MULTI ;
 int __ip_set_get (scalar_t__) ;
 int dump_attrs (struct nlmsghdr*) ;
 int dump_init (struct netlink_callback*) ;
 struct ip_set** ip_set_list ;
 scalar_t__ ip_set_max ;
 int ip_set_put_byindex (scalar_t__) ;
 int netlink_ack (int ,struct nlmsghdr*,int) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_hdr (int ) ;
 int pr_debug (char*,...) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct nlmsghdr* start_msg (struct sk_buff*,scalar_t__,int ,unsigned int,int ) ;
 int stub1 (struct ip_set*,struct sk_buff*) ;
 int stub2 (struct ip_set*,struct sk_buff*,struct netlink_callback*) ;

__attribute__((used)) static int
ip_set_dump_start(struct sk_buff *skb, struct netlink_callback *cb)
{
 ip_set_id_t index = IPSET_INVALID_ID, max;
 struct ip_set *set = ((void*)0);
 struct nlmsghdr *nlh = ((void*)0);
 unsigned int flags = NETLINK_CB(cb->skb).pid ? NLM_F_MULTI : 0;
 int ret = 0;

 if (cb->args[0] == DUMP_INIT) {
  ret = dump_init(cb);
  if (ret < 0) {
   nlh = nlmsg_hdr(cb->skb);


   if (nlh->nlmsg_flags & NLM_F_ACK)
    netlink_ack(cb->skb, nlh, ret);
   return ret;
  }
 }

 if (cb->args[1] >= ip_set_max)
  goto out;

 max = cb->args[0] == DUMP_ONE ? cb->args[1] + 1 : ip_set_max;
dump_last:
 pr_debug("args[0]: %ld args[1]: %ld\n", cb->args[0], cb->args[1]);
 for (; cb->args[1] < max; cb->args[1]++) {
  index = (ip_set_id_t) cb->args[1];
  set = ip_set_list[index];
  if (set == ((void*)0)) {
   if (cb->args[0] == DUMP_ONE) {
    ret = -ENOENT;
    goto out;
   }
   continue;
  }



  if (cb->args[0] != DUMP_ONE &&
      ((cb->args[0] == DUMP_ALL) ==
       !!(set->type->features & IPSET_DUMP_LAST)))
   continue;
  pr_debug("List set: %s\n", set->name);
  if (!cb->args[2]) {

   pr_debug("reference set\n");
   __ip_set_get(index);
  }
  nlh = start_msg(skb, NETLINK_CB(cb->skb).pid,
    cb->nlh->nlmsg_seq, flags,
    IPSET_CMD_LIST);
  if (!nlh) {
   ret = -EMSGSIZE;
   goto release_refcount;
  }
  NLA_PUT_U8(skb, IPSET_ATTR_PROTOCOL, IPSET_PROTOCOL);
  NLA_PUT_STRING(skb, IPSET_ATTR_SETNAME, set->name);
  switch (cb->args[2]) {
  case 0:

   NLA_PUT_STRING(skb, IPSET_ATTR_TYPENAME,
           set->type->name);
   NLA_PUT_U8(skb, IPSET_ATTR_FAMILY,
       set->family);
   NLA_PUT_U8(skb, IPSET_ATTR_REVISION,
       set->type->revision);
   ret = set->variant->head(set, skb);
   if (ret < 0)
    goto release_refcount;

  default:
   read_lock_bh(&set->lock);
   ret = set->variant->list(set, skb, cb);
   read_unlock_bh(&set->lock);
   if (!cb->args[2]) {

    if (cb->args[0] == DUMP_ONE)
     cb->args[1] = IPSET_INVALID_ID;
    else
     cb->args[1]++;
   }
   goto release_refcount;
  }
 }

 if (cb->args[0] == DUMP_ALL) {
  cb->args[0] = DUMP_LAST;
  cb->args[1] = 0;
  goto dump_last;
 }
 goto out;

nla_put_failure:
 ret = -EFAULT;
release_refcount:

 if (ret || !cb->args[2]) {
  pr_debug("release set %s\n", ip_set_list[index]->name);
  ip_set_put_byindex(index);
 }
out:
 if (nlh) {
  nlmsg_end(skb, nlh);
  pr_debug("nlmsg_len: %u\n", nlh->nlmsg_len);
  dump_attrs(nlh);
 }

 return ret < 0 ? ret : skb->len;
}
