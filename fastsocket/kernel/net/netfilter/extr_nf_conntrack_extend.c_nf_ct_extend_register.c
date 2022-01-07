
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_ext_type {size_t id; scalar_t__ len; int align; scalar_t__ alloc_size; } ;
struct nf_ct_ext {int dummy; } ;


 scalar_t__ ALIGN (int,int ) ;
 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_ct_ext_type_mutex ;
 scalar_t__* nf_ct_ext_types ;
 int rcu_assign_pointer (scalar_t__,struct nf_ct_ext_type*) ;
 int update_alloc_size (struct nf_ct_ext_type*) ;

int nf_ct_extend_register(struct nf_ct_ext_type *type)
{
 int ret = 0;

 mutex_lock(&nf_ct_ext_type_mutex);
 if (nf_ct_ext_types[type->id]) {
  ret = -EBUSY;
  goto out;
 }



 type->alloc_size = ALIGN(sizeof(struct nf_ct_ext), type->align)
      + type->len;
 rcu_assign_pointer(nf_ct_ext_types[type->id], type);
 update_alloc_size(type);
out:
 mutex_unlock(&nf_ct_ext_type_mutex);
 return ret;
}
