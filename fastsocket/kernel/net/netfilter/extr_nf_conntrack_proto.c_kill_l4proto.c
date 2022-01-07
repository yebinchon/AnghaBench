
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_l4proto {scalar_t__ l3proto; int l4proto; } ;
struct nf_conn {int dummy; } ;


 scalar_t__ nf_ct_l3num (struct nf_conn*) ;
 int nf_ct_protonum (struct nf_conn*) ;

__attribute__((used)) static int kill_l4proto(struct nf_conn *i, void *data)
{
 struct nf_conntrack_l4proto *l4proto;
 l4proto = (struct nf_conntrack_l4proto *)data;
 return nf_ct_protonum(i) == l4proto->l4proto &&
        nf_ct_l3num(i) == l4proto->l3proto;
}
