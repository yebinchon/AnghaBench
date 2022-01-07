
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nf_conn {TYPE_2__* tuplehash; } ;
struct TYPE_3__ {int * hash; } ;
struct net {TYPE_1__ ct; } ;
struct TYPE_4__ {int hnnode; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 int hlist_nulls_add_head_rcu (int *,int *) ;
 struct net* nf_ct_net (struct nf_conn*) ;

__attribute__((used)) static void __nf_conntrack_hash_insert(struct nf_conn *ct,
           unsigned int hash,
           unsigned int repl_hash)
{
 struct net *net = nf_ct_net(ct);

 hlist_nulls_add_head_rcu(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode,
      &net->ct.hash[hash]);
 hlist_nulls_add_head_rcu(&ct->tuplehash[IP_CT_DIR_REPLY].hnnode,
      &net->ct.hash[repl_hash]);
}
