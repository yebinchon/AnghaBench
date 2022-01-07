
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;
struct neigh_table {scalar_t__ family; scalar_t__ key_len; struct neigh_table* next; } ;
struct ndmsg {scalar_t__ ndm_family; int ndm_flags; scalar_t__ ndm_ifindex; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int NDA_DST ;
 int NEIGH_UPDATE_F_ADMIN ;
 int NEIGH_UPDATE_F_OVERRIDE ;
 int NTF_PROXY ;
 int NUD_FAILED ;
 struct net_device* dev_get_by_index (struct net*,scalar_t__) ;
 int dev_put (struct net_device*) ;
 struct neighbour* neigh_lookup (struct neigh_table*,int ,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 struct neigh_table* neigh_tables ;
 int neigh_tbl_lock ;
 int neigh_update (struct neighbour*,int *,int ,int) ;
 int nla_data (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;
 struct ndmsg* nlmsg_data (struct nlmsghdr*) ;
 struct nlattr* nlmsg_find_attr (struct nlmsghdr*,int,int ) ;
 int nlmsg_len (struct nlmsghdr*) ;
 int pneigh_delete (struct neigh_table*,struct net*,int ,struct net_device*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int neigh_delete(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct ndmsg *ndm;
 struct nlattr *dst_attr;
 struct neigh_table *tbl;
 struct net_device *dev = ((void*)0);
 int err = -EINVAL;

 if (nlmsg_len(nlh) < sizeof(*ndm))
  goto out;

 dst_attr = nlmsg_find_attr(nlh, sizeof(*ndm), NDA_DST);
 if (dst_attr == ((void*)0))
  goto out;

 ndm = nlmsg_data(nlh);
 if (ndm->ndm_ifindex) {
  dev = dev_get_by_index(net, ndm->ndm_ifindex);
  if (dev == ((void*)0)) {
   err = -ENODEV;
   goto out;
  }
 }

 read_lock(&neigh_tbl_lock);
 for (tbl = neigh_tables; tbl; tbl = tbl->next) {
  struct neighbour *neigh;

  if (tbl->family != ndm->ndm_family)
   continue;
  read_unlock(&neigh_tbl_lock);

  if (nla_len(dst_attr) < tbl->key_len)
   goto out_dev_put;

  if (ndm->ndm_flags & NTF_PROXY) {
   err = pneigh_delete(tbl, net, nla_data(dst_attr), dev);
   goto out_dev_put;
  }

  if (dev == ((void*)0))
   goto out_dev_put;

  neigh = neigh_lookup(tbl, nla_data(dst_attr), dev);
  if (neigh == ((void*)0)) {
   err = -ENOENT;
   goto out_dev_put;
  }

  err = neigh_update(neigh, ((void*)0), NUD_FAILED,
       NEIGH_UPDATE_F_OVERRIDE |
       NEIGH_UPDATE_F_ADMIN);
  neigh_release(neigh);
  goto out_dev_put;
 }
 read_unlock(&neigh_tbl_lock);
 err = -EAFNOSUPPORT;

out_dev_put:
 if (dev)
  dev_put(dev);
out:
 return err;
}
