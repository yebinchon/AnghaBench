
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_ext_type {unsigned int len; int alloc_size; int align; } ;
struct nf_ct_ext {unsigned int* offset; unsigned int len; int rcu; } ;
typedef int gfp_t ;
typedef enum nf_ct_ext_id { ____Placeholder_nf_ct_ext_id } nf_ct_ext_id ;


 unsigned int ALIGN (int,int ) ;
 int BUG_ON (int ) ;
 int INIT_RCU_HEAD (int *) ;
 struct nf_ct_ext* kzalloc (int ,int ) ;
 int * nf_ct_ext_types ;
 struct nf_ct_ext_type* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void *
nf_ct_ext_create(struct nf_ct_ext **ext, enum nf_ct_ext_id id, gfp_t gfp)
{
 unsigned int off, len;
 struct nf_ct_ext_type *t;

 rcu_read_lock();
 t = rcu_dereference(nf_ct_ext_types[id]);
 BUG_ON(t == ((void*)0));
 off = ALIGN(sizeof(struct nf_ct_ext), t->align);
 len = off + t->len;
 rcu_read_unlock();

 *ext = kzalloc(t->alloc_size, gfp);
 if (!*ext)
  return ((void*)0);

 INIT_RCU_HEAD(&(*ext)->rcu);
 (*ext)->offset[id] = off;
 (*ext)->len = len;

 return (void *)(*ext) + off;
}
