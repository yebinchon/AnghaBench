
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conn {TYPE_1__* tuplehash; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int tuple; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 int __nf_conntrack_hash_insert (struct nf_conn*,unsigned int,unsigned int) ;
 unsigned int hash_conntrack (struct net*,int *) ;
 struct net* nf_ct_net (struct nf_conn*) ;

void nf_conntrack_hash_insert(struct nf_conn *ct)
{
 struct net *net = nf_ct_net(ct);
 unsigned int hash, repl_hash;

 hash = hash_conntrack(net, &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple);
 repl_hash = hash_conntrack(net, &ct->tuplehash[IP_CT_DIR_REPLY].tuple);

 __nf_conntrack_hash_insert(ct, hash, repl_hash);
}
