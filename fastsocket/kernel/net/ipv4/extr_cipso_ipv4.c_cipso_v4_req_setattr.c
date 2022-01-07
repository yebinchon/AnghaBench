
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct request_sock {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_options {int optlen; int cipso; int __data; } ;
struct inet_request_sock {int opt; } ;
struct cipso_v4_doi {int dummy; } ;
struct TYPE_2__ {int rcu; } ;


 int CIPSO_V4_OPT_LEN_MAX ;
 int ENOMEM ;
 int EPERM ;
 int GFP_ATOMIC ;
 int call_rcu (int *,int ) ;
 int cipso_v4_genopt (unsigned char*,int,struct cipso_v4_doi const*,struct netlbl_lsm_secattr const*) ;
 TYPE_1__* get_ip_options_rcu (struct ip_options*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 int kfree (unsigned char*) ;
 int kfree_ip_options (struct ip_options*) ;
 unsigned char* kmalloc (int,int ) ;
 struct ip_options* kzalloc_ip_options (int,int ) ;
 int memcpy (int ,unsigned char*,int) ;
 int opt_kfree_rcu ;
 struct ip_options* xchg (int *,struct ip_options*) ;

int cipso_v4_req_setattr(struct request_sock *req,
    const struct cipso_v4_doi *doi_def,
    const struct netlbl_lsm_secattr *secattr)
{
 int ret_val = -EPERM;
 unsigned char *buf = ((void*)0);
 u32 buf_len;
 u32 opt_len;
 struct ip_options *opt = ((void*)0);
 struct inet_request_sock *req_inet;




 buf_len = CIPSO_V4_OPT_LEN_MAX;
 buf = kmalloc(buf_len, GFP_ATOMIC);
 if (buf == ((void*)0)) {
  ret_val = -ENOMEM;
  goto req_setattr_failure;
 }

 ret_val = cipso_v4_genopt(buf, buf_len, doi_def, secattr);
 if (ret_val < 0)
  goto req_setattr_failure;
 buf_len = ret_val;





 opt_len = (buf_len + 3) & ~3;
 opt = kzalloc_ip_options(opt_len, GFP_ATOMIC);
 if (opt == ((void*)0)) {
  ret_val = -ENOMEM;
  goto req_setattr_failure;
 }
 memcpy(opt->__data, buf, buf_len);
 opt->optlen = opt_len;
 opt->cipso = sizeof(struct iphdr);
 kfree(buf);
 buf = ((void*)0);

 req_inet = inet_rsk(req);
 opt = xchg(&req_inet->opt, opt);
 if (opt)
  call_rcu(&get_ip_options_rcu(opt)->rcu, opt_kfree_rcu);

 return 0;

req_setattr_failure:
 kfree(buf);
 kfree_ip_options(opt);
 return ret_val;
}
