
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct nf_conntrack_tuple {int dummy; } ;
struct TYPE_2__ {int htable_size; } ;
struct net {TYPE_1__ ct; } ;


 int __hash_conntrack (struct nf_conntrack_tuple const*,int ,int ) ;
 int nf_conntrack_hash_rnd ;

__attribute__((used)) static inline u_int32_t hash_conntrack(const struct net *net,
           const struct nf_conntrack_tuple *tuple)
{
 return __hash_conntrack(tuple, net->ct.htable_size,
    nf_conntrack_hash_rnd);
}
