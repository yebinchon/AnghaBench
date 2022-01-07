
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct TYPE_9__ {int port; } ;
struct TYPE_10__ {TYPE_3__ tcp; } ;
struct TYPE_11__ {int protonum; TYPE_4__ u; int u3; } ;
struct TYPE_7__ {scalar_t__ port; } ;
struct TYPE_8__ {TYPE_1__ tcp; } ;
struct TYPE_12__ {TYPE_2__ u; int u3; } ;
struct nf_conntrack_tuple {TYPE_5__ dst; TYPE_6__ src; } ;
struct nf_conntrack_expect {struct nf_conn* master; } ;
struct nf_conn {int dummy; } ;
struct net {int dummy; } ;
typedef int __be16 ;


 int IPPROTO_TCP ;
 struct nf_conntrack_expect* __nf_ct_expect_find (struct net*,struct nf_conntrack_tuple*) ;
 int memcpy (int *,union nf_inet_addr*,int) ;
 int memset (int *,int ,int) ;
 struct net* nf_ct_net (struct nf_conn*) ;

__attribute__((used)) static struct nf_conntrack_expect *find_expect(struct nf_conn *ct,
            union nf_inet_addr *addr,
            __be16 port)
{
 struct net *net = nf_ct_net(ct);
 struct nf_conntrack_expect *exp;
 struct nf_conntrack_tuple tuple;

 memset(&tuple.src.u3, 0, sizeof(tuple.src.u3));
 tuple.src.u.tcp.port = 0;
 memcpy(&tuple.dst.u3, addr, sizeof(tuple.dst.u3));
 tuple.dst.u.tcp.port = port;
 tuple.dst.protonum = IPPROTO_TCP;

 exp = __nf_ct_expect_find(net, &tuple);
 if (exp && exp->master == ct)
  return exp;
 return ((void*)0);
}
