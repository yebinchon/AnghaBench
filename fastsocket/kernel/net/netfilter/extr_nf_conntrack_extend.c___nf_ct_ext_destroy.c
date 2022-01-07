
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_ext_type {int (* destroy ) (struct nf_conn*) ;} ;
struct nf_conn {int dummy; } ;


 unsigned int NF_CT_EXT_NUM ;
 int nf_ct_ext_exist (struct nf_conn*,unsigned int) ;
 int * nf_ct_ext_types ;
 struct nf_ct_ext_type* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct nf_conn*) ;

void __nf_ct_ext_destroy(struct nf_conn *ct)
{
 unsigned int i;
 struct nf_ct_ext_type *t;

 for (i = 0; i < NF_CT_EXT_NUM; i++) {
  if (!nf_ct_ext_exist(ct, i))
   continue;

  rcu_read_lock();
  t = rcu_dereference(nf_ct_ext_types[i]);





  if (t && t->destroy)
   t->destroy(ct);
  rcu_read_unlock();
 }
}
