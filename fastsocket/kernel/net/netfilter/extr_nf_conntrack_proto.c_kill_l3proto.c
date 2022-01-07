
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_l3proto {scalar_t__ l3proto; } ;
struct nf_conn {int dummy; } ;


 scalar_t__ nf_ct_l3num (struct nf_conn*) ;

__attribute__((used)) static int kill_l3proto(struct nf_conn *i, void *data)
{
 return nf_ct_l3num(i) == ((struct nf_conntrack_l3proto *)data)->l3proto;
}
