
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_options {int optlen; int cipso; int __data; } ;
struct inet_sock {int opt; scalar_t__ is_icsk; } ;
struct inet_connection_sock {int icsk_ext_hdr_len; int icsk_pmtu_cookie; int (* icsk_sync_mss ) (struct sock*,int ) ;} ;
struct cipso_v4_doi {int dummy; } ;
struct TYPE_2__ {int rcu; } ;


 int CIPSO_V4_OPT_LEN_MAX ;
 int ENOMEM ;
 int EPERM ;
 int GFP_ATOMIC ;
 int call_rcu (int *,int ) ;
 int cipso_v4_genopt (unsigned char*,int,struct cipso_v4_doi const*,struct netlbl_lsm_secattr const*) ;
 TYPE_1__* get_ip_options_rcu (struct ip_options*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int kfree (unsigned char*) ;
 int kfree_ip_options (struct ip_options*) ;
 unsigned char* kmalloc (int,int ) ;
 struct ip_options* kzalloc_ip_options (int,int ) ;
 int memcpy (int ,unsigned char*,int) ;
 int opt_kfree_rcu ;
 int rcu_assign_pointer (int ,struct ip_options*) ;
 struct ip_options* rcu_dereference (int ) ;
 int stub1 (struct sock*,int ) ;

int cipso_v4_sock_setattr(struct sock *sk,
     const struct cipso_v4_doi *doi_def,
     const struct netlbl_lsm_secattr *secattr)
{
 int ret_val = -EPERM;
 unsigned char *buf = ((void*)0);
 u32 buf_len;
 u32 opt_len;
 struct ip_options *old, *opt = ((void*)0);
 struct inet_sock *sk_inet;
 struct inet_connection_sock *sk_conn;





 if (sk == ((void*)0))
  return 0;




 buf_len = CIPSO_V4_OPT_LEN_MAX;
 buf = kmalloc(buf_len, GFP_ATOMIC);
 if (buf == ((void*)0)) {
  ret_val = -ENOMEM;
  goto socket_setattr_failure;
 }

 ret_val = cipso_v4_genopt(buf, buf_len, doi_def, secattr);
 if (ret_val < 0)
  goto socket_setattr_failure;
 buf_len = ret_val;





 opt_len = (buf_len + 3) & ~3;
 opt = kzalloc_ip_options(opt_len, GFP_ATOMIC);
 if (opt == ((void*)0)) {
  ret_val = -ENOMEM;
  goto socket_setattr_failure;
 }
 memcpy(opt->__data, buf, buf_len);
 opt->optlen = opt_len;
 opt->cipso = sizeof(struct iphdr);
 kfree(buf);
 buf = ((void*)0);

 sk_inet = inet_sk(sk);
 old = rcu_dereference(sk_inet->opt);
 if (sk_inet->is_icsk) {
  sk_conn = inet_csk(sk);
  if (old)
   sk_conn->icsk_ext_hdr_len -= old->optlen;
  sk_conn->icsk_ext_hdr_len += opt->optlen;
  sk_conn->icsk_sync_mss(sk, sk_conn->icsk_pmtu_cookie);
 }
 rcu_assign_pointer(sk_inet->opt, opt);
 if (old)
  call_rcu(&get_ip_options_rcu(old)->rcu, opt_kfree_rcu);

 return 0;

socket_setattr_failure:
 kfree(buf);
 kfree_ip_options(opt);
 return ret_val;
}
