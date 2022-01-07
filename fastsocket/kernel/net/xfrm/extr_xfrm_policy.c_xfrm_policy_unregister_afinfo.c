
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy_afinfo {size_t family; int * garbage_collect; struct dst_ops* dst_ops; } ;
struct dst_ops {int * link_failure; int * negative_advice; int * check; int * kmem_cachep; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 size_t NPROTO ;
 int RCU_INIT_POINTER (struct xfrm_policy_afinfo*,int *) ;
 scalar_t__ likely (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;
 scalar_t__ unlikely (int) ;
 struct xfrm_policy_afinfo** xfrm_policy_afinfo ;
 int xfrm_policy_afinfo_lock ;

int xfrm_policy_unregister_afinfo(struct xfrm_policy_afinfo *afinfo)
{
 int err = 0;
 if (unlikely(afinfo == ((void*)0)))
  return -EINVAL;
 if (unlikely(afinfo->family >= NPROTO))
  return -EAFNOSUPPORT;
 spin_lock(&xfrm_policy_afinfo_lock);
 if (likely(xfrm_policy_afinfo[afinfo->family] != ((void*)0))) {
  if (unlikely(xfrm_policy_afinfo[afinfo->family] != afinfo))
   err = -EINVAL;
  else
   RCU_INIT_POINTER(xfrm_policy_afinfo[afinfo->family],
      ((void*)0));
 }
 spin_unlock(&xfrm_policy_afinfo_lock);
 if (!err) {
  struct dst_ops *dst_ops = afinfo->dst_ops;

  synchronize_rcu();

  dst_ops->kmem_cachep = ((void*)0);
  dst_ops->check = ((void*)0);
  dst_ops->negative_advice = ((void*)0);
  dst_ops->link_failure = ((void*)0);
  afinfo->garbage_collect = ((void*)0);
 }
 return err;
}
