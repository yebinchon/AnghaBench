
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct unix_sock {TYPE_6__* addr; int mnt; struct dentry* dentry; } ;
struct task_struct {char* comm; scalar_t__ pid; } ;
struct sock {int sk_family; } ;
struct path {int mnt; struct dentry* dentry; } ;
struct net_device {int name; } ;
struct ipv6_pinfo {int daddr; int rcv_saddr; } ;
struct inode {int i_ino; TYPE_4__* i_sb; } ;
struct inet_sock {int dport; int sport; int daddr; int rcv_saddr; } ;
struct TYPE_14__ {char* name; } ;
struct dentry {TYPE_3__ d_name; struct inode* d_inode; } ;
struct TYPE_12__ {char* key_desc; int key; } ;
struct TYPE_19__ {int daddr; int saddr; } ;
struct TYPE_18__ {int daddr; int saddr; } ;
struct TYPE_20__ {int netif; int dport; TYPE_8__ v6info; int sport; TYPE_7__ v4info; int family; struct sock* sk; } ;
struct TYPE_13__ {struct inode* inode; struct path path; } ;
struct TYPE_11__ {char* kmod_name; TYPE_1__ key_struct; TYPE_9__ net; struct task_struct* tsk; TYPE_2__ fs; int cap; int ipc_id; } ;
struct common_audit_data {int type; TYPE_10__ u; struct task_struct* tsk; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_17__ {TYPE_5__* name; int len; } ;
struct TYPE_16__ {char* sun_path; } ;
struct TYPE_15__ {int s_id; } ;
 int audit_log_d_path (struct audit_buffer*,char*,struct path*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 int audit_log_n_hex (struct audit_buffer*,char*,int) ;
 int audit_log_untrustedstring (struct audit_buffer*,char*) ;
 struct task_struct* current ;
 struct dentry* d_find_alias (struct inode*) ;
 struct net_device* dev_get_by_index (int *,int ) ;
 int dev_put (struct net_device*) ;
 int dput (struct dentry*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int init_net ;
 int print_ipv4_addr (struct audit_buffer*,int ,int ,char*,char*) ;
 int print_ipv6_addr (struct audit_buffer*,int *,int ,char*,char*) ;
 struct unix_sock* unix_sk (struct sock*) ;

__attribute__((used)) static void dump_common_audit_data(struct audit_buffer *ab,
       struct common_audit_data *a)
{
 struct inode *inode = ((void*)0);
 struct task_struct *tsk = current;

 if (a->tsk)
  tsk = a->tsk;
 if (tsk && tsk->pid) {
  audit_log_format(ab, " pid=%d comm=", tsk->pid);
  audit_log_untrustedstring(ab, tsk->comm);
 }

 switch (a->type) {
 case 128:
  return;
 case 133:
  audit_log_format(ab, " key=%d ", a->u.ipc_id);
  break;
 case 135:
  audit_log_format(ab, " capability=%d ", a->u.cap);
  break;
 case 134:
  if (a->u.fs.path.dentry) {
   struct dentry *dentry = a->u.fs.path.dentry;
   if (a->u.fs.path.mnt) {
    audit_log_d_path(ab, "path=", &a->u.fs.path);
   } else {
    audit_log_format(ab, " name=");
    audit_log_untrustedstring(ab,
       dentry->d_name.name);
   }
   inode = dentry->d_inode;
  } else if (a->u.fs.inode) {
   struct dentry *dentry;
   inode = a->u.fs.inode;
   dentry = d_find_alias(inode);
   if (dentry) {
    audit_log_format(ab, " name=");
    audit_log_untrustedstring(ab,
       dentry->d_name.name);
    dput(dentry);
   }
  }
  if (inode)
   audit_log_format(ab, " dev=%s ino=%lu",
     inode->i_sb->s_id,
     inode->i_ino);
  break;
 case 129:
  tsk = a->u.tsk;
  if (tsk && tsk->pid) {
   audit_log_format(ab, " pid=%d comm=", tsk->pid);
   audit_log_untrustedstring(ab, tsk->comm);
  }
  break;
 case 130:
  if (a->u.net.sk) {
   struct sock *sk = a->u.net.sk;
   struct unix_sock *u;
   int len = 0;
   char *p = ((void*)0);

   switch (sk->sk_family) {
   case 138: {
    struct inet_sock *inet = inet_sk(sk);

    print_ipv4_addr(ab, inet->rcv_saddr,
      inet->sport,
      "laddr", "lport");
    print_ipv4_addr(ab, inet->daddr,
      inet->dport,
      "faddr", "fport");
    break;
   }
   case 137: {
    struct inet_sock *inet = inet_sk(sk);
    struct ipv6_pinfo *inet6 = inet6_sk(sk);

    print_ipv6_addr(ab, &inet6->rcv_saddr,
      inet->sport,
      "laddr", "lport");
    print_ipv6_addr(ab, &inet6->daddr,
      inet->dport,
      "faddr", "fport");
    break;
   }
   case 136:
    u = unix_sk(sk);
    if (u->dentry) {
     struct path path = {
      .dentry = u->dentry,
      .mnt = u->mnt
     };
     audit_log_d_path(ab, "path=", &path);
     break;
    }
    if (!u->addr)
     break;
    len = u->addr->len-sizeof(short);
    p = &u->addr->name->sun_path[0];
    audit_log_format(ab, " path=");
    if (*p)
     audit_log_untrustedstring(ab, p);
    else
     audit_log_n_hex(ab, p, len);
    break;
   }
  }

  switch (a->u.net.family) {
  case 138:
   print_ipv4_addr(ab, a->u.net.v4info.saddr,
     a->u.net.sport,
     "saddr", "src");
   print_ipv4_addr(ab, a->u.net.v4info.daddr,
     a->u.net.dport,
     "daddr", "dest");
   break;
  case 137:
   print_ipv6_addr(ab, &a->u.net.v6info.saddr,
     a->u.net.sport,
     "saddr", "src");
   print_ipv6_addr(ab, &a->u.net.v6info.daddr,
     a->u.net.dport,
     "daddr", "dest");
   break;
  }
  if (a->u.net.netif > 0) {
   struct net_device *dev;


   dev = dev_get_by_index(&init_net, a->u.net.netif);
   if (dev) {
    audit_log_format(ab, " netif=%s", dev->name);
    dev_put(dev);
   }
  }
  break;
 case 131:
  audit_log_format(ab, " kmod=");
  audit_log_untrustedstring(ab, a->u.kmod_name);
  break;
 }
}
