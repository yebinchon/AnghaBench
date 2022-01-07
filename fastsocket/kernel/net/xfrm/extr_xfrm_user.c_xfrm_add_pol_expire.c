
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
typedef int u8 ;
typedef int u32 ;
struct xfrm_userpolicy_info {int dir; int sel; scalar_t__ index; } ;
struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_user_polexpire {scalar_t__ hard; struct xfrm_userpolicy_info pol; } ;
struct xfrm_sec_ctx {int dummy; } ;
struct TYPE_4__ {int dead; } ;
struct xfrm_policy {TYPE_1__ walk; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int sid; int sessionid; int loginuid; } ;
struct TYPE_5__ {int pid; } ;


 int ENOENT ;
 TYPE_3__ NETLINK_CB (struct sk_buff*) ;
 size_t XFRMA_SEC_CTX ;
 int XFRM_POLICY_TYPE_MAIN ;
 int copy_from_user_policy_type (int *,struct nlattr**) ;
 TYPE_2__* current ;
 int km_policy_expired (struct xfrm_policy*,int ,scalar_t__,int ) ;
 struct xfrm_user_sec_ctx* nla_data (struct nlattr*) ;
 struct xfrm_user_polexpire* nlmsg_data (struct nlmsghdr*) ;
 int printk (char*) ;
 int security_xfrm_policy_alloc (struct xfrm_sec_ctx**,struct xfrm_user_sec_ctx*) ;
 int security_xfrm_policy_free (struct xfrm_sec_ctx*) ;
 struct net* sock_net (int ) ;
 scalar_t__ unlikely (int ) ;
 int verify_policy_dir (int ) ;
 int verify_sec_ctx_len (struct nlattr**) ;
 int xfrm_audit_policy_delete (struct xfrm_policy*,int,int ,int ,int ) ;
 int xfrm_mark_get (struct nlattr**,struct xfrm_mark*) ;
 int xfrm_pol_put (struct xfrm_policy*) ;
 struct xfrm_policy* xfrm_policy_byid (struct net*,int ,int ,int ,scalar_t__,int ,int*) ;
 struct xfrm_policy* xfrm_policy_bysel_ctx (struct net*,int ,int ,int ,int *,struct xfrm_sec_ctx*,int ,int*) ;
 int xfrm_policy_delete (struct xfrm_policy*,int ) ;

__attribute__((used)) static int xfrm_add_pol_expire(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct xfrm_policy *xp;
 struct xfrm_user_polexpire *up = nlmsg_data(nlh);
 struct xfrm_userpolicy_info *p = &up->pol;
 u8 type = XFRM_POLICY_TYPE_MAIN;
 int err = -ENOENT;
 struct xfrm_mark m;
 u32 mark = xfrm_mark_get(attrs, &m);

 err = copy_from_user_policy_type(&type, attrs);
 if (err)
  return err;

 err = verify_policy_dir(p->dir);
 if (err)
  return err;

 if (p->index)
  xp = xfrm_policy_byid(net, mark, type, p->dir, p->index, 0, &err);
 else {
  struct nlattr *rt = attrs[XFRMA_SEC_CTX];
  struct xfrm_sec_ctx *ctx;

  err = verify_sec_ctx_len(attrs);
  if (err)
   return err;

  ctx = ((void*)0);
  if (rt) {
   struct xfrm_user_sec_ctx *uctx = nla_data(rt);

   err = security_xfrm_policy_alloc(&ctx, uctx);
   if (err)
    return err;
  }
  xp = xfrm_policy_bysel_ctx(net, mark, type, p->dir,
        &p->sel, ctx, 0, &err);
  security_xfrm_policy_free(ctx);
 }
 if (xp == ((void*)0))
  return -ENOENT;

 if (unlikely(xp->walk.dead))
  goto out;

 err = 0;
 if (up->hard) {
  uid_t loginuid = NETLINK_CB(skb).loginuid;
  uid_t sessionid = NETLINK_CB(skb).sessionid;
  u32 sid = NETLINK_CB(skb).sid;
  xfrm_policy_delete(xp, p->dir);
  xfrm_audit_policy_delete(xp, 1, loginuid, sessionid, sid);

 } else {

  printk("Dont know what to do with soft policy expire\n");
 }
 km_policy_expired(xp, p->dir, up->hard, current->pid);

out:
 xfrm_pol_put(xp);
 return err;
}
