
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct socket {int dummy; } ;
struct sock {struct socket* sk_socket; } ;
struct sk_buff {scalar_t__ len; } ;
struct nlmsghdr {int nlmsg_type; } ;
struct inode_security_struct {int sclass; } ;
struct TYPE_5__ {struct inode_security_struct* i_security; } ;
struct TYPE_4__ {int audit_context; } ;


 int AUDIT_SELINUX_ERR ;
 int EINVAL ;
 int ENOENT ;
 int GFP_KERNEL ;
 scalar_t__ NLMSG_SPACE (int ) ;
 TYPE_3__* SOCK_INODE (struct socket*) ;
 int audit_log (int ,int ,int ,char*,int ,int ) ;
 TYPE_1__* current ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 scalar_t__ security_get_allow_unknown () ;
 int selinux_enforcing ;
 int selinux_nlmsg_lookup (int ,int ,int *) ;
 int socket_has_perm (TYPE_1__*,struct socket*,int ) ;

__attribute__((used)) static int selinux_nlmsg_perm(struct sock *sk, struct sk_buff *skb)
{
 int err = 0;
 u32 perm;
 struct nlmsghdr *nlh;
 struct socket *sock = sk->sk_socket;
 struct inode_security_struct *isec = SOCK_INODE(sock)->i_security;

 if (skb->len < NLMSG_SPACE(0)) {
  err = -EINVAL;
  goto out;
 }
 nlh = nlmsg_hdr(skb);

 err = selinux_nlmsg_lookup(isec->sclass, nlh->nlmsg_type, &perm);
 if (err) {
  if (err == -EINVAL) {
   audit_log(current->audit_context, GFP_KERNEL, AUDIT_SELINUX_ERR,
      "SELinux:  unrecognized netlink message"
      " type=%hu for sclass=%hu\n",
      nlh->nlmsg_type, isec->sclass);
   if (!selinux_enforcing || security_get_allow_unknown())
    err = 0;
  }


  if (err == -ENOENT)
   err = 0;
  goto out;
 }

 err = socket_has_perm(current, sock, perm);
out:
 return err;
}
