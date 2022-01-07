
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_helper {int dummy; } ;
struct nf_conn_help {struct nf_conntrack_helper const* helper; } ;
struct nf_conn {int dummy; } ;


 int IPCT_HELPER ;
 int nf_conntrack_event (int ,struct nf_conn*) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash*) ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 int rcu_assign_pointer (struct nf_conntrack_helper const*,int *) ;

__attribute__((used)) static inline int unhelp(struct nf_conntrack_tuple_hash *i,
    const struct nf_conntrack_helper *me)
{
 struct nf_conn *ct = nf_ct_tuplehash_to_ctrack(i);
 struct nf_conn_help *help = nfct_help(ct);

 if (help && help->helper == me) {
  nf_conntrack_event(IPCT_HELPER, ct);
  rcu_assign_pointer(help->helper, ((void*)0));
 }
 return 0;
}
