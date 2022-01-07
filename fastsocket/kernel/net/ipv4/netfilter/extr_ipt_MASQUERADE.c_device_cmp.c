
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn_nat {int masq_index; } ;
struct nf_conn {int dummy; } ;


 struct nf_conn_nat* nfct_nat (struct nf_conn*) ;

__attribute__((used)) static int
device_cmp(struct nf_conn *i, void *ifindex)
{
 const struct nf_conn_nat *nat = nfct_nat(i);

 if (!nat)
  return 0;

 return nat->masq_index == (int)(long)ifindex;
}
