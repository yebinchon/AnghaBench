
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conntrack_helper {int dummy; } ;
struct nf_conn_help {int helper; int help; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
typedef int gfp_t ;
struct TYPE_2__ {int tuple; } ;


 int ENOMEM ;
 size_t IP_CT_DIR_REPLY ;
 struct nf_conntrack_helper* __nf_ct_helper_find (int *) ;
 int memset (int *,int ,int) ;
 struct nf_conn_help* nf_ct_helper_ext_add (struct nf_conn*,int ) ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 int rcu_assign_pointer (int ,struct nf_conntrack_helper*) ;

int __nf_ct_try_assign_helper(struct nf_conn *ct, gfp_t flags)
{
 int ret = 0;
 struct nf_conntrack_helper *helper;
 struct nf_conn_help *help = nfct_help(ct);

 helper = __nf_ct_helper_find(&ct->tuplehash[IP_CT_DIR_REPLY].tuple);
 if (helper == ((void*)0)) {
  if (help)
   rcu_assign_pointer(help->helper, ((void*)0));
  goto out;
 }

 if (help == ((void*)0)) {
  help = nf_ct_helper_ext_add(ct, flags);
  if (help == ((void*)0)) {
   ret = -ENOMEM;
   goto out;
  }
 } else {
  memset(&help->help, 0, sizeof(help->help));
 }

 rcu_assign_pointer(help->helper, helper);
out:
 return ret;
}
