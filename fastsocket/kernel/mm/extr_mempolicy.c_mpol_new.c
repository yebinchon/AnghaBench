
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mempolicy {unsigned short mode; unsigned short flags; int refcnt; } ;
typedef int nodemask_t ;


 int EINVAL ;
 int ENOMEM ;
 struct mempolicy* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 unsigned short MPOL_DEFAULT ;
 unsigned short MPOL_F_RELATIVE_NODES ;
 unsigned short MPOL_F_STATIC_NODES ;
 unsigned short MPOL_PREFERRED ;
 int VM_BUG_ON (int) ;
 int atomic_set (int *,int) ;
 struct mempolicy* kmem_cache_alloc (int ,int ) ;
 int* nodes_addr (int ) ;
 scalar_t__ nodes_empty (int ) ;
 int policy_cache ;
 int pr_debug (char*,unsigned short,unsigned short,int) ;

__attribute__((used)) static struct mempolicy *mpol_new(unsigned short mode, unsigned short flags,
      nodemask_t *nodes)
{
 struct mempolicy *policy;

 pr_debug("setting mode %d flags %d nodes[0] %lx\n",
   mode, flags, nodes ? nodes_addr(*nodes)[0] : -1);

 if (mode == MPOL_DEFAULT) {
  if (nodes && !nodes_empty(*nodes))
   return ERR_PTR(-EINVAL);
  return ((void*)0);
 }
 VM_BUG_ON(!nodes);






 if (mode == MPOL_PREFERRED) {
  if (nodes_empty(*nodes)) {
   if (((flags & MPOL_F_STATIC_NODES) ||
        (flags & MPOL_F_RELATIVE_NODES)))
    return ERR_PTR(-EINVAL);
  }
 } else if (nodes_empty(*nodes))
  return ERR_PTR(-EINVAL);
 policy = kmem_cache_alloc(policy_cache, GFP_KERNEL);
 if (!policy)
  return ERR_PTR(-ENOMEM);
 atomic_set(&policy->refcnt, 1);
 policy->mode = mode;
 policy->flags = flags;

 return policy;
}
