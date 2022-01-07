
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct neigh_table {int lock; int id; int family; } ;
struct neigh_parms {int dummy; } ;
struct ndtmsg {scalar_t__ ndtm_pad2; scalar_t__ ndtm_pad1; int ndtm_family; } ;


 int EMSGSIZE ;
 int NDTA_NAME ;
 scalar_t__ neightbl_fill_parms (struct sk_buff*,struct neigh_parms*) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ndtmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static int neightbl_fill_param_info(struct sk_buff *skb,
        struct neigh_table *tbl,
        struct neigh_parms *parms,
        u32 pid, u32 seq, int type,
        unsigned int flags)
{
 struct ndtmsg *ndtmsg;
 struct nlmsghdr *nlh;

 nlh = nlmsg_put(skb, pid, seq, type, sizeof(*ndtmsg), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 ndtmsg = nlmsg_data(nlh);

 read_lock_bh(&tbl->lock);
 ndtmsg->ndtm_family = tbl->family;
 ndtmsg->ndtm_pad1 = 0;
 ndtmsg->ndtm_pad2 = 0;

 if (nla_put_string(skb, NDTA_NAME, tbl->id) < 0 ||
     neightbl_fill_parms(skb, parms) < 0)
  goto errout;

 read_unlock_bh(&tbl->lock);
 return nlmsg_end(skb, nlh);
errout:
 read_unlock_bh(&tbl->lock);
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
